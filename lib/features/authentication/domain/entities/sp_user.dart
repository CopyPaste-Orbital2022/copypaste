import 'package:equatable/equatable.dart';

class SPUser extends Equatable {
  final String uid;
  final String userName;
  final String? email;
  const SPUser({
    required this.uid,
    required this.userName,
    required this.email,
  });

  @override
  List<Object?> get props => [uid, userName, email];
}
