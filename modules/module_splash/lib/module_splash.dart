library module_splash;

import 'package:core/core.dart';
import 'package:module_splash/presenter/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const SplashPage());
  }
}
