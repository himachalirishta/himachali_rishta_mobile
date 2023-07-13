// To parse this JSON data, do
//
//     final phoneOtpResponse = phoneOtpResponseFromJson(jsonString);

import 'dart:convert';

PhoneOtpResponse phoneOtpResponseFromJson(String str) =>
    PhoneOtpResponse.fromJson(json.decode(str));

String phoneOtpResponseToJson(PhoneOtpResponse data) =>
    json.encode(data.toJson());

class PhoneOtpResponse {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  Userdata? userdata;

  PhoneOtpResponse({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userdata,
  });

  PhoneOtpResponse copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    Userdata? userdata,
  }) =>
      PhoneOtpResponse(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        userdata: userdata ?? this.userdata,
      );

  factory PhoneOtpResponse.fromJson(Map<String, dynamic> json) =>
      PhoneOtpResponse(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        userdata: json["userdata"] == null
            ? null
            : Userdata.fromJson(json["userdata"]),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "userdata": userdata?.toJson(),
      };
}

class Userdata {
  int? id;
  String? oldId;
  String? name;
  String? email;
  String? phone;
  String? stepScreen;

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
    String? oldId,
    String? name,
    String? email,
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

// To parse this JSON data, do
//
//     final phoneOtpRequest = phoneOtpRequestFromJson(jsonString);

PhoneOtpRequest phoneOtpRequestFromJson(String str) =>
    PhoneOtpRequest.fromJson(json.decode(str));

String phoneOtpRequestToJson(PhoneOtpRequest data) =>
    json.encode(data.toJson());

class PhoneOtpRequest {
  String? countrycode;
  String? phone;

  PhoneOtpRequest({
    this.countrycode,
    this.phone,
  });

  PhoneOtpRequest copyWith({
    String? countrycode,
    String? phone,
  }) =>
      PhoneOtpRequest(
        countrycode: countrycode ?? this.countrycode,
        phone: phone ?? this.phone,
      );

  factory PhoneOtpRequest.fromJson(Map<String, dynamic> json) =>
      PhoneOtpRequest(
        countrycode: json["countrycode"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "countrycode": countrycode,
        "phone": phone,
      };
}
