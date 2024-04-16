import 'package:commons/domain/entities/event_entity.dart';
import 'package:commons/domain/services/i_event_bus_service.dart';
import 'package:commons/infra/drivers/i_event_bus_driver.dart';

class EventBusService implements IEventBusService {
  final IEventBusDriver driver;

  EventBusService({required this.driver});

  @override
  Stream<EventEntity> on(String eventName) {
    return driver.on(eventName);
  }

  @override
  void publish(EventEntity event) {
    driver.publish(event.name, event.data);
  }
}
