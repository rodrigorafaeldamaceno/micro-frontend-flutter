import 'package:core/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
