import 'dart:developer';

import 'package:core/core.dart';

class HomeStore {
  final IEventBusService eventBusService;

  HomeStore({required this.eventBusService});

  Future sendEvent(int? index) async {
    eventBusService.publish(
      EventEntity(name: 'home_event', data: index),
    );
  }

  void listenEvent() {
    eventBusService.on<int?>('home_event').listen((event) {
      log('Event received: ${event.data}');
    });
  }
}
