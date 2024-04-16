import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_login/module_login.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: LoginModule());
  }
}
