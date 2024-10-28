//import 'package:sqflite_common/sqlite_api.dart';
import 'package:path/path.dart';
import 'package:project/app/core/database/sqlite_migration_factory.dart';
import 'package:synchronized/synchronized.dart';
import 'package:sqflite/sqflite.dart';

//underline na frente: impedindo que tenha acesso de fora
class SqliteConnectionFactory {
  //criando variaveis de constantes para represnetar o banco de dados
  //versao e nome
  static const _VERSION = 1;
  static const _DATABASE_NAME = 'TODO_LIST_PROVIDER';
  //padrao singleton na SqliteConnectionFactory  pois o SQLITE é orientado a arquivos, e para evitar que posteriormente algum arquivo fique corrrompido e se perca o BD, faremos com  que a classe seja instanciada uma unica vez
  static SqliteConnectionFactory? _instance;
  Database? _db; //controlará o banco de dados
  final _lock =
      Lock(); //para trabalhar com multitreads(concorrencia de chamadas dos metodos)
//se acaso executar duas requisicoes ao mesmo tempo, acaba abrindo duas conexoes com o banco de dddos

  //criando construtor privado
  SqliteConnectionFactory._();

  //criando factory que irá controlar a instancia
  factory SqliteConnectionFactory() {
    //toda vez  que o chamar verifica se tem uma instancia, se houver ja a retorna e se nao tiver irá criar
    if (_instance == null) {
      _instance = SqliteConnectionFactory._();
    }
    return _instance!;
  }
  //estrutura base de abertura de conexao
  Future<Database> openConnection() async {
    var databasePath = await getDatabasesPath();
    var databasePathFinal =
        join(databasePath, _DATABASE_NAME); //o primeiro cai aqui
    if (_db == null) {
      //para brir a conexao, precisa ser nulo!!! nao nulo? nao abre, fazendo com que abra a conexao apenas uma vez Singleton!
      await _lock.synchronized(() async {
        //o primeiro vai sincronizar, se for null vai abrir conexao, se vier outro open connection( um segundo), o _lock  faz ele aguardar ja que o primeiro está no processo, ou seja, nao abre outra conexao
        //para brir a conexao, precisa ser nulo
        if (_db == null) {
          _db = await openDatabase(
            databasePathFinal,
            version: _VERSION,
            onConfigure: _onConfigure,
            onCreate: _onCreate,
            onUpgrade: _onUpgrade,
            onDowngrade: _onDowngrade,
          );
        }
      });
    }

    return _db!;
  }

//fechando conexao
  void closeConnection() {
    _db?.close();
    _db = null;
  }

//metodos
  Future<void> _onConfigure(Database db) async {
    await db.execute('PRAGMA foreing_keys = ON');
  }

  Future<void> _onCreate(Database db, int version) async {
    final batch = db.batch();
    final migrations = SqliteMigrationFactory()
        .getCreateMigration(); //recuperando as migrations
    for (var migration in migrations) {
      //pega todas as migrations -no caso a versao 1 e executa cada uma delas
      migration.create(batch);
    }

    batch.commit();
  }

  Future<void> _onUpgrade(Database db, int oldVersion, intVersion) async {
    final batch = db.batch();
    final migrations = SqliteMigrationFactory().getUpgradeMigration(oldVersion);
    for (var migration in migrations) {
      migration.update(batch);
    }

    batch.commit();
  }

  Future<void> _onDowngrade(Database db, int oldVersion, intVersion) async {}
}
