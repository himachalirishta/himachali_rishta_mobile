// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String accessToken;
  bool userStatus;
  String? tokenType;
  int? expiresIn;
  Userdata? userdata;

  LoginResponse({
    required this.accessToken,
    required this.userStatus,
    this.tokenType,
    this.expiresIn,
    this.userdata,
  });

  LoginResponse copyWith({
    String? accessToken,
    bool? userStatus,
    String? tokenType,
    int? expiresIn,
    Userdata? userdata,
  }) =>
      LoginResponse(
        accessToken: accessToken ?? this.accessToken,
        userStatus: userStatus ?? this.userStatus,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        userdata: userdata ?? this.userdata,
      );

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        accessToken: json["access_token"],
        userStatus: json["User_Status"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        userdata: json["userdata"] == null
            ? null
            : Userdata.fromJson(json["userdata"]),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "User_Status": userStatus,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "userdata": userdata?.toJson(),
      };

  factory LoginResponse.empty() {
    return LoginResponse(
      accessToken: '',
      userStatus: false,
      tokenType: '',
      expiresIn: 0,
      userdata: Userdata(
        id: 0,
        oldId: 0,
        name: '',
        email: '',
        countryCode: '',
        phone: '',
        stepScreen: '',
      ),
    );
  }
}

class Userdata {
  int? id;
  int? oldId;
  String? name;
  String? email;
  String? countryCode;
  String? phone;
  String? stepScreen;

  Userdata({
    this.id,
    this.oldId,
    this.name,
    this.email,
    this.countryCode,
    this.phone,
    this.stepScreen,
  });

  Userdata copyWith({
    int? id,
    int? oldId,
    String? name,
    String? email,
    String? countryCode,
    String? phone,
    String? stepScreen,
  }) =>
      Userdata(
        id: id ?? this.id,
        oldId: oldId ?? this.oldId,
        name: name ?? this.name,
        email: email ?? this.email,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        stepScreen: stepScreen ?? this.stepScreen,
      );

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
        id: json["id"],
        oldId: json["old_id"],
        name: json["name"],
        email: json["email"],
        countryCode: json["country_code"],
        phone: json["phone"],
        stepScreen: json["step_screen"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "old_id": oldId,
        "name": name,
        "email": email,
        "country_code": countryCode,
        "phone": phone,
        "step_screen": stepScreen,
      };
}
