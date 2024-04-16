library core;

import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My App',
      routerConfig: Modular.routerConfig,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
    );
  }
}
