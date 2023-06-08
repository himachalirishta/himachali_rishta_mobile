// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final Userdata userdata;

  LoginResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.userdata,
  });

  LoginResponse copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    Userdata? userdata,
  }) =>
      LoginResponse(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        userdata: userdata ?? this.userdata,
      );

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        userdata: Userdata.fromJson(json["userdata"]),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "userdata": userdata.toJson(),
      };

  factory LoginResponse.empty() => LoginResponse(
        accessToken: '',
        tokenType: '',
        expiresIn: 0,
        userdata: Userdata(
          id: 0,
          oldId: 0,
          name: '',
          email: '',
          phone: '',
          stepScreen: '',
        ),
      );
}

class Userdata {
  final int id;
  final dynamic oldId;
  final dynamic name;
  final dynamic email;
  final String phone;
  final String stepScreen;

  Userdata({
    required this.id,
    this.oldId,
    this.name,
    this.email,
    required this.phone,
    required this.stepScreen,
  });

  Userdata copyWith({
    int? id,
    dynamic oldId,
    dynamic name,
    dynamic email,
    String? phone,
    String? stepScreen,
  }) =>
      Userdata(
        id: id ?? this.id,
        oldId: oldId ?? this.oldId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        stepScreen: stepScreen ?? this.stepScreen,
      );

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
        id: json["id"],
        oldId: json["old_id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        stepScreen: json["step_screen"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "old_id": oldId,
        "name": name,
        "email": email,
        "phone": phone,
        "step_screen": stepScreen,
      };
}
