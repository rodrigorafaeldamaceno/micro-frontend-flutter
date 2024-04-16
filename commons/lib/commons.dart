library commons;

import 'package:commons/domain/services/i_event_bus_service.dart';
import 'package:commons/external/drivers/event_bus_driver.dart';
import 'package:commons/infra/drivers/i_event_bus_driver.dart';
import 'package:commons/infra/services/event_bus_service.dart';
import 'package:core/core.dart';

export 'commons.dart';

class Commons extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addLazySingleton<IEventBusDriver>(EventBusDriver.new);
    i.addLazySingleton<IEventBusService>(EventBusService.new);
  }
}
