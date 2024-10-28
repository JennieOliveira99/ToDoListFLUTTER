import 'package:project/app/modules/auth/login/login_controller.dart';
import 'package:project/app/modules/auth/login/login_page.dart';
import 'package:project/app/modules/todo_list_module.dart';
import 'package:provider/provider.dart';

//estruturando o modulo
class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            )
          ],
          routers: {
            '/login': (context) => LoginPage(),
          },
        );
}
