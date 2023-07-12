import 'dart:convert';

import 'package:get/get.dart';

class OtpScreenGetController extends GetxController {
/*  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();*/

  String otpEntered = '';
}

RegisterAccountByPhoneRequest registerAccountByPhoneRequestFromJson(
        String str) =>
    RegisterAccountByPhoneRequest.fromJson(json.decode(str));

String registerAccountByPhoneRequestToJson(
        RegisterAccountByPhoneRequest data) =>
    json.encode(data.toJson());

class RegisterAccountByPhoneRequest {
  final String? phone;
  final String? otp;

  RegisterAccountByPhoneRequest({
    this.phone,
    this.otp,
  });

  RegisterAccountByPhoneRequest copyWith({
    String? phone,
    String? otp,
  }) =>
      RegisterAccountByPhoneRequest(
        phone: phone ?? this.phone,
        otp: otp ?? this.otp,
      );

  factory RegisterAccountByPhoneRequest.fromJson(Map<String, dynamic> json) =>
      RegisterAccountByPhoneRequest(
        phone: json["phone"],
        otp: json["otp"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "otp": otp,
      };
}

RegisterAccountByPhoneResponse registerAccountByPhoneResponseFromJson(
        String str) =>
    RegisterAccountByPhoneResponse.fromJson(json.decode(str));

String registerAccountByPhoneResponseToJson(
        RegisterAccountByPhoneResponse data) =>
    json.encode(data.toJson());

class RegisterAccountByPhoneResponse {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final Userdata? userdata;

  RegisterAccountByPhoneResponse({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userdata,
  });

  RegisterAccountByPhoneResponse copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    Userdata? userdata,
  }) =>
      RegisterAccountByPhoneResponse(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        userdata: userdata ?? this.userdata,
      );

  factory RegisterAccountByPhoneResponse.fromJson(Map<String, dynamic> json) =>
      RegisterAccountByPhoneResponse(
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
