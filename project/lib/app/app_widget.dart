import 'package:flutter/material.dart';
import 'package:project/app/core/database/sqlite_adm_connection.dart';
import 'package:project/app/modules/auth/auth_module.dart';
import 'package:project/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  var sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addObserver(sqliteAdmConnection); //controlando o observer da  pagina
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List Provider',
      initialRoute: '/login',
      routes: {...AuthModule().routers}, //importando estrutura
      home: SplashPage(),
    );
  }
}
