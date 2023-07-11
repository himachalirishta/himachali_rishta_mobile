// To parse this JSON data, do
//
//     final educationOccupationRequest = educationOccupationRequestFromJson(jsonString);

import 'dart:convert';

EducationOccupationRequest educationOccupationRequestFromJson(String str) =>
    EducationOccupationRequest.fromJson(json.decode(str));

String educationOccupationRequestToJson(EducationOccupationRequest data) =>
    json.encode(data.toJson());

class EducationOccupationRequest {
  String education;
  String educationDetails;
  String empType;
  String occupation;
  String occupationDetail;
  String annualIncome;

  EducationOccupationRequest({
    required this.education,
    required this.educationDetails,
    required this.empType,
    required this.occupation,
    required this.occupationDetail,
    required this.annualIncome,
  });

  EducationOccupationRequest copyWith({
    String? education,
    String? educationDetails,
    String? empType,
    String? occupation,
    String? occupationDetail,
    String? annualIncome,
  }) =>
      EducationOccupationRequest(
        education: education ?? this.education,
        educationDetails: educationDetails ?? this.educationDetails,
        empType: empType ?? this.empType,
        occupation: occupation ?? this.occupation,
        occupationDetail: occupationDetail ?? this.occupationDetail,
        annualIncome: annualIncome ?? this.annualIncome,
      );

  factory EducationOccupationRequest.fromJson(Map<String, dynamic> json) =>
      EducationOccupationRequest(
        education: json["education"],
        educationDetails: json["education_details"],
        empType: json["emp_type"],
        occupation: json["occupation"],
        occupationDetail: json["occupation_detail"],
        annualIncome: json["annual_income"],
      );

  Map<String, dynamic> toJson() => {
        "education": education,
        "education_details": educationDetails,
        "emp_type": empType,
        "occupation": occupation,
        "occupation_detail": occupationDetail,
        "annual_income": annualIncome,
      };
}

EducationOccupationResponse educationOccupationResponseFromJson(String str) =>
    EducationOccupationResponse.fromJson(json.decode(str));

String educationOccupationResponseToJson(EducationOccupationResponse data) =>
    json.encode(data.toJson());

class EducationOccupationResponse {
  String message;

  EducationOccupationResponse({
    required this.message,
  });

  EducationOccupationResponse copyWith({
    String? message,
  }) =>
      EducationOccupationResponse(
        message: message ?? this.message,
      );

  factory EducationOccupationResponse.fromJson(Map<String, dynamic> json) =>
      EducationOccupationResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
