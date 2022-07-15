import '../../domain/entities/sp_user.dart';

class SPUserModel extends SPUser {
  const SPUserModel({
    required String uid,
    required String userName,
    required String? email,
  }) : super(uid: uid, userName: userName, email: email);

  Map<String, dynamic> toJson() {
    return {
      "id": uid,
      "name": userName,
      "email": email,
    };
  }

  static SPUserModel fromJson(Map<String, dynamic> json) {
    return SPUserModel(
      uid: json["id"] as String,
      userName: json["name"] as String,
      email: json["email"] as String?,
    );
  }
}
