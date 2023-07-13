// To parse this JSON data, do
//
//     final verifyPhoneRequest = verifyPhoneRequestFromJson(jsonString);

// To parse this JSON data, do
//
//     final verifyPhoneRequest = verifyPhoneRequestFromJson(jsonString);

import 'dart:convert';

VerifyPhoneRequest verifyPhoneRequestFromJson(String str) =>
    VerifyPhoneRequest.fromJson(json.decode(str));

String verifyPhoneRequestToJson(VerifyPhoneRequest data) =>
    json.encode(data.toJson());

class VerifyPhoneRequest {
  String countrycode;
  String phone;
  String otp;

  VerifyPhoneRequest({
    required this.countrycode,
    required this.phone,
    required this.otp,
  });

  VerifyPhoneRequest copyWith({
    String? countrycode,
    String? phone,
    String? otp,
  }) =>
      VerifyPhoneRequest(
        countrycode: countrycode ?? this.countrycode,
        phone: phone ?? this.phone,
        otp: otp ?? this.otp,
      );

  factory VerifyPhoneRequest.fromJson(Map<String, dynamic> json) =>
      VerifyPhoneRequest(
        countrycode: json["countrycode"],
        phone: json["phone"],
        otp: json["otp"],
      );

  Map<String, dynamic> toJson() => {
        "countrycode": countrycode,
        "phone": phone,
        "otp": otp,
      };
}

// To parse this JSON data, do
//
//     final verifyPhoneResponse = verifyPhoneResponseFromJson(jsonString);

VerifyPhoneResponse verifyPhoneResponseFromJson(String str) =>
    VerifyPhoneResponse.fromJson(json.decode(str));

String verifyPhoneResponseToJson(VerifyPhoneResponse data) =>
    json.encode(data.toJson());

class VerifyPhoneResponse {
  String message;

  VerifyPhoneResponse({
    required this.message,
  });

  VerifyPhoneResponse copyWith({
    String? message,
  }) =>
      VerifyPhoneResponse(
        message: message ?? this.message,
      );

  factory VerifyPhoneResponse.fromJson(Map<String, dynamic> json) =>
      VerifyPhoneResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
