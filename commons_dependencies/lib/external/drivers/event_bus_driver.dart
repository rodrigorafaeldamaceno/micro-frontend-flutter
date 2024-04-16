import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:commons_dependencies/domain/entities/event_entity.dart';
import 'package:commons_dependencies/infra/drivers/i_event_bus_driver.dart';

class EventBusDriver implements IEventBusDriver {
  final _eventBus = EventBus();

  @override
  Stream<EventEntity> on(String eventName) {
    return _eventBus
        .on<EventEntity>()
        .where((event) => event.name == eventName);
  }

  @override
  void publish(String eventName, Map<String, dynamic> data) {
    _eventBus.fire(EventEntity(name: eventName, data: data));
  }
}
