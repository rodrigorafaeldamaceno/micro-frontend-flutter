import 'package:core/core.dart';

class EventEntity<T> extends Equatable {
  final String name;
  final T? data;

  const EventEntity({required this.name, this.data});

  @override
  List<Object?> get props => [name, data];
}
