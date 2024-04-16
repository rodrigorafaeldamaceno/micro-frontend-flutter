import 'package:commons/domain/entities/event_entity.dart';

abstract class IEventBusService {
  void publish<T>(EventEntity<T> event);
  Stream<EventEntity<T>> on<T>(String eventName);
}
