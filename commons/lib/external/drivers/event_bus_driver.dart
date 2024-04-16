import 'package:core/core.dart';

class EventBusDriver implements IEventBusDriver {
  final _eventBus = EventBus();

  @override
  Stream<EventEntity<T>> on<T>(String eventName) {
    return _eventBus
        .on<EventEntity<T>>()
        .where((event) => event.name == eventName);
  }

  @override
  void publish<T>(String eventName, T? data) {
    _eventBus.fire(EventEntity<T>(name: eventName, data: data));
  }
}
