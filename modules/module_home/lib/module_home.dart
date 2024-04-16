library module_home;

import 'package:core/core.dart';
import 'package:module_home/presenter/pages/home_page.dart';
import 'package:module_home/presenter/stores/home_store.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [
        CommonsModule(),
      ];

  @override
  void binds(i) {
    i.add(HomeStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
