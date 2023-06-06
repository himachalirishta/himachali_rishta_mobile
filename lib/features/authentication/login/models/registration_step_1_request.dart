// To parse this JSON data, do
//
//     final registrationStep1Request = registrationStep1RequestFromJson(jsonString);

import 'dart:convert';

import 'package:himachali_rishta/helpers/date_time_helper.dart';

RegistrationStep1Request registrationStep1RequestFromJson(String str) =>
    RegistrationStep1Request.fromJson(json.decode(str));

String registrationStep1RequestToJson(RegistrationStep1Request data) =>
    json.encode(data.toJson());

class RegistrationStep1Request {
  final String brideGroomName;
  final String gender;
  final String religion;
  final String caste;
  final String maritalStatus;
  final String postingThisProfileFor;
  final DateTime dateOfBirth;

  RegistrationStep1Request({
    required this.brideGroomName,
    required this.gender,
    required this.religion,
    required this.caste,
    required this.maritalStatus,
    required this.postingThisProfileFor,
    required this.dateOfBirth,
  });

  RegistrationStep1Request copyWith({
    String? brideGroomName,
    String? gender,
    String? religion,
    String? caste,
    String? maritalStatus,
    String? postingThisProfileFor,
    DateTime? dateOfBirth,
  }) =>
      RegistrationStep1Request(
        brideGroomName: brideGroomName ?? this.brideGroomName,
        gender: gender ?? this.gender,
        religion: religion ?? this.religion,
        caste: caste ?? this.caste,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        postingThisProfileFor:
            postingThisProfileFor ?? this.postingThisProfileFor,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      );

  factory RegistrationStep1Request.fromJson(Map<String, dynamic> json) =>
      RegistrationStep1Request(
        brideGroomName: json["bride_groom_name"],
        gender: json["gender"],
        religion: json["religion"],
        caste: json["caste"],
        maritalStatus: json["marital_status"],
        postingThisProfileFor: json["posting_this_profile_for"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
      );

  Map<String, dynamic> toJson() => {
        "bride_groom_name": brideGroomName,
        "gender": gender,
        "religion": religion,
        "caste": caste,
        "marital_status": maritalStatus,
        "posting_this_profile_for": postingThisProfileFor,
        "date_of_birth": dateOfBirth.toApiFormat,
      };
}

RegistrationStep1Response registrationStep1ResponseFromJson(String str) =>
    RegistrationStep1Response.fromJson(json.decode(str));

String registrationStep1ResponseToJson(RegistrationStep1Response data) =>
    json.encode(data.toJson());

class RegistrationStep1Response {
  final String message;

  RegistrationStep1Response({
    required this.message,
  });

  RegistrationStep1Response copyWith({
    String? message,
  }) =>
      RegistrationStep1Response(
        message: message ?? this.message,
      );

  factory RegistrationStep1Response.fromJson(Map<String, dynamic> json) =>
      RegistrationStep1Response(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
