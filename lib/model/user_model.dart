
// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.status,
    this.user,
    this.paging,
  });

  Status? status;
  User? user;
  dynamic paging;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    status: Status.fromJson(json["status"]),
    user: User.fromJson(json["User"]),
    paging: json["paging"],
  );

  Map<String, dynamic> toJson() => {
    "status": status!.toJson(),
    "User": user!.toJson(),
    "paging": paging,
  };
}

class Status {
  Status({
    this.status,
    this.message,
    this.code,
  });

  String? status;
  List<String>? message;
  int? code;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    status: json["status"],
    message: List<String>.from(json["message"].map((x) => x)),
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": List<dynamic>.from(message!.map((x) => x)),
    "code": code,
  };
}

class User {
  User({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.mobileVerifiedAt,
    this.emailVerifiedAt,
    this.avatar,
    this.lat,
    this.lng,
    this.appLocale,
    this.notificationCount,
    this.accessToken,
    this.tokenType,
  });

  int? id;
  String? name;
  String? mobile;
  String? email;
  dynamic mobileVerifiedAt;
  dynamic emailVerifiedAt;
  String? avatar;
  dynamic lat;
  dynamic lng;
  String? appLocale;
  int? notificationCount;
  String? accessToken;
  String? tokenType;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    mobile: json["mobile"],
    email: json["email"],
    mobileVerifiedAt: json["mobile_verified_at"],
    emailVerifiedAt: json["email_verified_at"],
    avatar: json["avatar"],
    lat: json["lat"],
    lng: json["lng"],
    appLocale: json["app_locale"],
    notificationCount: json["notification_count"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "mobile": mobile,
    "email": email,
    "mobile_verified_at": mobileVerifiedAt,
    "email_verified_at": emailVerifiedAt,
    "avatar": avatar,
    "lat": lat,
    "lng": lng,
    "app_locale": appLocale,
    "notification_count": notificationCount,
    "access_token": accessToken,
    "token_type": tokenType,
  };
}
