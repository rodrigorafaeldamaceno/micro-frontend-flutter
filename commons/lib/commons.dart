library commons;

import 'package:core/core.dart';

export 'commons.dart';
export 'domain/domain.dart';
export 'external/external.dart';
export 'infra/infra.dart';

class CommonsModule extends Module {
  static IEventBusDriver get eventBusDriver => EventBusDriver();
  static IEventBusService get eventBusService =>
      EventBusService(driver: eventBusDriver);
  @override
  void exportedBinds(Injector i) {
    i.addInstance<IEventBusDriver>(eventBusDriver);
    i.addInstance<IEventBusService>(eventBusService);
  }
}
