import 'package:commons_dependencies/domain/entities/event_entity.dart';

abstract class IEventBusDriver {
  void publish(String eventName, Map<String, dynamic> data);
  Stream<EventEntity> on(String eventName);
}
