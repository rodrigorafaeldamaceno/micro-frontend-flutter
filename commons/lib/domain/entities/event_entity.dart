import 'package:commons_dependencies/commons_dependencies.dart';

class EventEntity<T> extends AppEvent {
  final String name;
  final T? data;

  const EventEntity({required this.name, this.data});

  @override
  List<Object?> get props => [name, data];
}
