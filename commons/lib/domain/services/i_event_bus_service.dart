import 'package:commons/domain/entities/event_entity.dart';

abstract class IEventBusService {
  void publish(EventEntity event);
  Stream<EventEntity> on(String eventName);
}
