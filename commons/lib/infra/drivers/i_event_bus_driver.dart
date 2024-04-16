import 'package:commons/domain/entities/event_entity.dart';

abstract class IEventBusDriver {
  void publish(String eventName, Map<String, dynamic> data);
  Stream<EventEntity> on(String eventName);
}
