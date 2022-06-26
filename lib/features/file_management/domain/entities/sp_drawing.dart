import 'package:equatable/equatable.dart';

class SPDrawing extends Equatable {
  final String id;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String name;

  const SPDrawing({
    required this.id,
    required this.createdAt,
    required this.modifiedAt,
    required this.name,
  });

  @override
  List<Object?> get props => [id];

  SPDrawing modify({String? name}) {
    return SPDrawing(
      id: id,
      createdAt: createdAt,
      modifiedAt: DateTime.now(),
      name: name ?? this.name,
    );
  }
}
