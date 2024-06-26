import 'package:core/core.dart';
import 'package:module_home/module_home.dart';
import 'package:module_login/module_login.dart';
import 'package:module_splash/module_splash.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: SplashModule());
    r.module('/login/', module: LoginModule());
    r.module('/home/', module: HomeModule());
  }
}
