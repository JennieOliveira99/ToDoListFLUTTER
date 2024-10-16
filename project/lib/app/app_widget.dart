import 'package:flutter/material.dart';
import 'package:project/app/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List Provider',
      home: SplashPage(),
    );
  }
}
