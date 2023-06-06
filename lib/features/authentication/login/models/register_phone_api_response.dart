// To parse this JSON data, do
//
//     final registerPhoneNumberApiResponse = registerPhoneNumberApiResponseFromJson(jsonString);

import 'dart:convert';

RegisterPhoneNumberApiResponse registerPhoneNumberApiResponseFromJson(String str) => RegisterPhoneNumberApiResponse.fromJson(json.decode(str));

String registerPhoneNumberApiResponseToJson(RegisterPhoneNumberApiResponse data) => json.encode(data.toJson());

class RegisterPhoneNumberApiResponse {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final Userdata? userdata;

  RegisterPhoneNumberApiResponse({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userdata,
  });

  RegisterPhoneNumberApiResponse copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    Userdata? userdata,
  }) =>
      RegisterPhoneNumberApiResponse(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        userdata: userdata ?? this.userdata,
      );

  factory RegisterPhoneNumberApiResponse.fromJson(Map<String, dynamic> json) => RegisterPhoneNumberApiResponse(
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresIn: json["expires_in"],
    userdata: json["userdata"] == null ? null : Userdata.fromJson(json["userdata"]),
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_in": expiresIn,
    "userdata": userdata?.toJson(),
  };
}

class Userdata {
  final int? id;
  final dynamic oldId;
  final dynamic name;
  final dynamic email;
  final String? phone;
  final String? stepScreen;

  Userdata({
    this.id,
    this.oldId,
    this.name,
    this.email,
    this.phone,
    this.stepScreen,
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
