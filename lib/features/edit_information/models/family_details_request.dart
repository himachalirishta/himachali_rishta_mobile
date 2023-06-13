// To parse this JSON data, do
//
//     final familyDetailsRequest = familyDetailsRequestFromJson(jsonString);

import 'dart:convert';

FamilyDetailsRequest familyDetailsRequestFromJson(String str) =>
    FamilyDetailsRequest.fromJson(json.decode(str));

String familyDetailsRequestToJson(FamilyDetailsRequest data) =>
    json.encode(data.toJson());

class FamilyDetailsRequest {
  String fatherOccoupatin;
  String maotherOccupation;
  String familyType;
  String elderBrothers;
  String youngerBrothers;
  String marriedBrothers;
  String elderSisters;
  String youngerSisters;
  String mariredSisters;

  FamilyDetailsRequest({
    required this.fatherOccoupatin,
    required this.maotherOccupation,
    required this.familyType,
    required this.elderBrothers,
    required this.youngerBrothers,
    required this.marriedBrothers,
    required this.elderSisters,
    required this.youngerSisters,
    required this.mariredSisters,
  });

  FamilyDetailsRequest copyWith({
    String? fatherOccoupatin,
    String? maotherOccupation,
    String? familyType,
    String? elderBrothers,
    String? youngerBrothers,
    String? marriedBrothers,
    String? elderSisters,
    String? youngerSisters,
    String? mariredSisters,
  }) =>
      FamilyDetailsRequest(
        fatherOccoupatin: fatherOccoupatin ?? this.fatherOccoupatin,
        maotherOccupation: maotherOccupation ?? this.maotherOccupation,
        familyType: familyType ?? this.familyType,
        elderBrothers: elderBrothers ?? this.elderBrothers,
        youngerBrothers: youngerBrothers ?? this.youngerBrothers,
        marriedBrothers: marriedBrothers ?? this.marriedBrothers,
        elderSisters: elderSisters ?? this.elderSisters,
        youngerSisters: youngerSisters ?? this.youngerSisters,
        mariredSisters: mariredSisters ?? this.mariredSisters,
      );

  factory FamilyDetailsRequest.fromJson(Map<String, dynamic> json) =>
      FamilyDetailsRequest(
        fatherOccoupatin: json["father_occoupatin"],
        maotherOccupation: json["maother_occupation"],
        familyType: json["family_type"],
        elderBrothers: json["elder_brothers"],
        youngerBrothers: json["younger_brothers"],
        marriedBrothers: json["married_brothers"],
        elderSisters: json["elder_sisters"],
        youngerSisters: json["younger_sisters"],
        mariredSisters: json["marired_sisters"],
      );

  Map<String, dynamic> toJson() => {
        "father_occoupatin": fatherOccoupatin,
        "maother_occupation": maotherOccupation,
        "family_type": familyType,
        "elder_brothers": elderBrothers,
        "younger_brothers": youngerBrothers,
        "married_brothers": marriedBrothers,
        "elder_sisters": elderSisters,
        "younger_sisters": youngerSisters,
        "marired_sisters": mariredSisters,
      };
}
// To parse this JSON data, do
//
//     final familyDetailsResponse = familyDetailsResponseFromJson(jsonString);

FamilyDetailsResponse familyDetailsResponseFromJson(String str) =>
    FamilyDetailsResponse.fromJson(json.decode(str));

String familyDetailsResponseToJson(FamilyDetailsResponse data) =>
    json.encode(data.toJson());

class FamilyDetailsResponse {
  String message;

  FamilyDetailsResponse({
    required this.message,
  });

  FamilyDetailsResponse copyWith({
    String? message,
  }) =>
      FamilyDetailsResponse(
        message: message ?? this.message,
      );

  factory FamilyDetailsResponse.fromJson(Map<String, dynamic> json) =>
      FamilyDetailsResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
