import 'package:commons/domain/entities/event_entity.dart';

abstract class IEventBusDriver {
  void publish<T>(String eventName, T? data);
  Stream<EventEntity<T>> on<T>(String eventName);
}
