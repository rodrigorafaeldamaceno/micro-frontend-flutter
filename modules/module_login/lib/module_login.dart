library module_login;

import 'package:core/core.dart';
import 'package:module_login/presenter/pages/login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    // i.addLazySingleton(AuthStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginPage());
  }
}
