// To parse this JSON data, do
//
//     final profileDescriptionRequest = profileDescriptionRequestFromJson(jsonString);

import 'dart:convert';

ProfileDescriptionRequest profileDescriptionRequestFromJson(String str) =>
    ProfileDescriptionRequest.fromJson(json.decode(str));

String profileDescriptionRequestToJson(ProfileDescriptionRequest data) =>
    json.encode(data.toJson());

class ProfileDescriptionRequest {
  String profileDescription;

  ProfileDescriptionRequest({
    required this.profileDescription,
  });

  ProfileDescriptionRequest copyWith({
    String? profileDescription,
  }) =>
      ProfileDescriptionRequest(
        profileDescription: profileDescription ?? this.profileDescription,
      );

  factory ProfileDescriptionRequest.fromJson(Map<String, dynamic> json) =>
      ProfileDescriptionRequest(
        profileDescription: json["profile_description"],
      );

  Map<String, dynamic> toJson() => {
        "profile_description": profileDescription,
      };
}
// To parse this JSON data, do
//
//     final profileDescriptionResponse = profileDescriptionResponseFromJson(jsonString);

ProfileDescriptionResponse profileDescriptionResponseFromJson(String str) =>
    ProfileDescriptionResponse.fromJson(json.decode(str));

String profileDescriptionResponseToJson(ProfileDescriptionResponse data) =>
    json.encode(data.toJson());

class ProfileDescriptionResponse {
  String message;

  ProfileDescriptionResponse({
    required this.message,
  });

  ProfileDescriptionResponse copyWith({
    String? message,
  }) =>
      ProfileDescriptionResponse(
        message: message ?? this.message,
      );

  factory ProfileDescriptionResponse.fromJson(Map<String, dynamic> json) =>
      ProfileDescriptionResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
