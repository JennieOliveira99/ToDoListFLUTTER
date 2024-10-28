import 'package:flutter/material.dart';
import 'package:project/app/core/database/sqlite_connection_factory.dart';

class SqliteAdmConnection with WidgetsBindingObserver {
  @override
  // ele da as opcoes do que o usuario fez dentro do
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final connection = SqliteConnectionFactory();

    switch (state) {
      case AppLifecycleState.detached:
        connection.closeConnection();
      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
        connection.closeConnection();

      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        connection.closeConnection();
        break;
    }
    super.didChangeAppLifecycleState(state);
  }
}
