// To parse this JSON data, do
//
//     final partnerPreferenceRequest = partnerPreferenceRequestFromJson(jsonString);

import 'dart:convert';

PartnerPreferenceRequest partnerPreferenceRequestFromJson(String str) =>
    PartnerPreferenceRequest.fromJson(json.decode(str));

String partnerPreferenceRequestToJson(PartnerPreferenceRequest data) =>
    json.encode(data.toJson());

class PartnerPreferenceRequest {
  String age;
  String religion;
  String caste;
  String height;
  String lookingFor;
  String education;
  String employmentType;
  String occupation;
  String annualIncome;
  String manglik;
  String livingCountry;
  String livingState;
  String livingCity;
  String homeTown;

  PartnerPreferenceRequest({
    required this.age,
    required this.religion,
    required this.caste,
    required this.height,
    required this.lookingFor,
    required this.education,
    required this.employmentType,
    required this.occupation,
    required this.annualIncome,
    required this.manglik,
    required this.livingCountry,
    required this.livingState,
    required this.livingCity,
    required this.homeTown,
  });

  PartnerPreferenceRequest copyWith({
    String? age,
    String? religion,
    String? caste,
    String? height,
    String? lookingFor,
    String? education,
    String? employmentType,
    String? occupation,
    String? annualIncome,
    String? manglik,
    String? livingCountry,
    String? livingState,
    String? livingCity,
    String? homeTown,
  }) =>
      PartnerPreferenceRequest(
        age: age ?? this.age,
        religion: religion ?? this.religion,
        caste: caste ?? this.caste,
        height: height ?? this.height,
        lookingFor: lookingFor ?? this.lookingFor,
        education: education ?? this.education,
        employmentType: employmentType ?? this.employmentType,
        occupation: occupation ?? this.occupation,
        annualIncome: annualIncome ?? this.annualIncome,
        manglik: manglik ?? this.manglik,
        livingCountry: livingCountry ?? this.livingCountry,
        livingState: livingState ?? this.livingState,
        livingCity: livingCity ?? this.livingCity,
        homeTown: homeTown ?? this.homeTown,
      );

  factory PartnerPreferenceRequest.fromJson(Map<String, dynamic> json) =>
      PartnerPreferenceRequest(
        age: json["age"],
        religion: json["religion"],
        caste: json["caste"],
        height: json["height"],
        lookingFor: json["looking_for"],
        education: json["education"],
        employmentType: json["employment_type"],
        occupation: json["occupation"],
        annualIncome: json["annual_income"],
        manglik: json["manglik"],
        livingCountry: json["living_country"],
        livingState: json["living_state"],
        livingCity: json["living_city"],
        homeTown: json["home_town"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "religion": religion,
        "caste": caste,
        "height": height,
        "looking_for": lookingFor,
        "education": education,
        "employment_type": employmentType,
        "occupation": occupation,
        "annual_income": annualIncome,
        "manglik": manglik,
        "living_country": livingCountry,
        "living_state": livingState,
        "living_city": livingCity,
        "home_town": homeTown,
      };
}
// To parse this JSON data, do
//
//     final partnerPreferenceResponse = partnerPreferenceResponseFromJson(jsonString);

PartnerPreferenceResponse partnerPreferenceResponseFromJson(String str) =>
    PartnerPreferenceResponse.fromJson(json.decode(str));

String partnerPreferenceResponseToJson(PartnerPreferenceResponse data) =>
    json.encode(data.toJson());

class PartnerPreferenceResponse {
  String message;

  PartnerPreferenceResponse({
    required this.message,
  });

  PartnerPreferenceResponse copyWith({
    String? message,
  }) =>
      PartnerPreferenceResponse(
        message: message ?? this.message,
      );

  factory PartnerPreferenceResponse.fromJson(Map<String, dynamic> json) =>
      PartnerPreferenceResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
