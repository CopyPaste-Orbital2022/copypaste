import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entities/sp_user.dart';

class SPUserModel extends SPUser {
  const SPUserModel({
    required String uid,
    required String userName,
    required String? email,
  }) : super(uid: uid, userName: userName, email: email);

  factory SPUserModel.fromFirebase(User user) {
    return SPUserModel(
      uid: user.uid,
      userName: user.displayName ?? "Unnamed User",
      email: user.email,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": uid,
      "name": userName,
      "email": email,
    };
  }
}
