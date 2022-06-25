import 'package:equatable/equatable.dart';

class SPDrawing extends Equatable {
  const SPDrawing({
    required this.id,
    required this.createdAt,
    required this.modifiedAt,
    required this.title,
  });

  final String id;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String title;

  @override
  List<Object?> get props => [id, createdAt, modifiedAt, title];
}
