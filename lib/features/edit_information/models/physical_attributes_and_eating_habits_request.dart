// To parse this JSON data, do
//
//     final physicalAttributesAndEatingHabitsRequest = physicalAttributesAndEatingHabitsRequestFromJson(jsonString);

import 'dart:convert';

PhysicalAttributesAndEatingHabitsRequest physicalAttributesAndEatingHabitsRequestFromJson(String str) => PhysicalAttributesAndEatingHabitsRequest.fromJson(json.decode(str));

String physicalAttributesAndEatingHabitsRequestToJson(PhysicalAttributesAndEatingHabitsRequest data) => json.encode(data.toJson());

class PhysicalAttributesAndEatingHabitsRequest {
  String height;
  String weight;
  String bloodGroup;
  String complexion;
  String bodyType;
  String diet;
  String specialCase;
  String disablity;

  PhysicalAttributesAndEatingHabitsRequest({
    required this.height,
    required this.weight,
    required this.bloodGroup,
    required this.complexion,
    required this.bodyType,
    required this.diet,
    required this.specialCase,
    required this.disablity,
  });

  PhysicalAttributesAndEatingHabitsRequest copyWith({
    String? height,
    String? weight,
    String? bloodGroup,
    String? complexion,
    String? bodyType,
    String? diet,
    String? specialCase,
    String? disablity,
  }) =>
      PhysicalAttributesAndEatingHabitsRequest(
        height: height ?? this.height,
        weight: weight ?? this.weight,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        complexion: complexion ?? this.complexion,
        bodyType: bodyType ?? this.bodyType,
        diet: diet ?? this.diet,
        specialCase: specialCase ?? this.specialCase,
        disablity: disablity ?? this.disablity,
      );

  factory PhysicalAttributesAndEatingHabitsRequest.fromJson(Map<String, dynamic> json) => PhysicalAttributesAndEatingHabitsRequest(
    height: json["height"],
    weight: json["weight"],
    bloodGroup: json["blood_group"],
    complexion: json["complexion"],
    bodyType: json["body_type"],
    diet: json["diet"],
    specialCase: json["special_case"],
    disablity: json["disablity"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "weight": weight,
    "blood_group": bloodGroup,
    "complexion": complexion,
    "body_type": bodyType,
    "diet": diet,
    "special_case": specialCase,
    "disablity": disablity,
  };
}

PhysicalAttributesAndEatingHabitsResponse physicalAttributesAndEatingHabitsResponseFromJson(String str) => PhysicalAttributesAndEatingHabitsResponse.fromJson(json.decode(str));

String physicalAttributesAndEatingHabitsResponseToJson(PhysicalAttributesAndEatingHabitsResponse data) => json.encode(data.toJson());

class PhysicalAttributesAndEatingHabitsResponse {
  String message;

  PhysicalAttributesAndEatingHabitsResponse({
    required this.message,
  });

  PhysicalAttributesAndEatingHabitsResponse copyWith({
    String? message,
  }) =>
      PhysicalAttributesAndEatingHabitsResponse(
        message: message ?? this.message,
      );

  factory PhysicalAttributesAndEatingHabitsResponse.fromJson(Map<String, dynamic> json) => PhysicalAttributesAndEatingHabitsResponse(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
