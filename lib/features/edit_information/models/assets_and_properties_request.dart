// To parse this JSON data, do
//
//     final assetsAndPropertiesRequest = assetsAndPropertiesRequestFromJson(jsonString);

import 'dart:convert';

AssetsAndPropertiesRequest assetsAndPropertiesRequestFromJson(String str) =>
    AssetsAndPropertiesRequest.fromJson(json.decode(str));

String assetsAndPropertiesRequestToJson(AssetsAndPropertiesRequest data) =>
    json.encode(data.toJson());

class AssetsAndPropertiesRequest {
  String ownHouse;
  String ownCar;
  String ownLandAgri;
  String ownCommericialLand;
  String ownAnyBusiness;

  AssetsAndPropertiesRequest({
    required this.ownHouse,
    required this.ownCar,
    required this.ownLandAgri,
    required this.ownCommericialLand,
    required this.ownAnyBusiness,
  });

  AssetsAndPropertiesRequest copyWith({
    String? ownHouse,
    String? ownCar,
    String? ownLandAgri,
    String? ownCommericialLand,
    String? ownAnyBusiness,
  }) =>
      AssetsAndPropertiesRequest(
        ownHouse: ownHouse ?? this.ownHouse,
        ownCar: ownCar ?? this.ownCar,
        ownLandAgri: ownLandAgri ?? this.ownLandAgri,
        ownCommericialLand: ownCommericialLand ?? this.ownCommericialLand,
        ownAnyBusiness: ownAnyBusiness ?? this.ownAnyBusiness,
      );

  factory AssetsAndPropertiesRequest.fromJson(Map<String, dynamic> json) =>
      AssetsAndPropertiesRequest(
        ownHouse: json["own_house"],
        ownCar: json["own_car"],
        ownLandAgri: json["own_land_agri"],
        ownCommericialLand: json["own_commericial_land"],
        ownAnyBusiness: json["own_any_business"],
      );

  Map<String, dynamic> toJson() => {
        "own_house": ownHouse,
        "own_car": ownCar,
        "own_land_agri": ownLandAgri,
        "own_commericial_land": ownCommericialLand,
        "own_any_business": ownAnyBusiness,
      };
}
// To parse this JSON data, do
//
//     final assetsAndPropertiesResponse = assetsAndPropertiesResponseFromJson(jsonString);

AssetsAndPropertiesResponse assetsAndPropertiesResponseFromJson(String str) =>
    AssetsAndPropertiesResponse.fromJson(json.decode(str));

String assetsAndPropertiesResponseToJson(AssetsAndPropertiesResponse data) =>
    json.encode(data.toJson());

class AssetsAndPropertiesResponse {
  String message;

  AssetsAndPropertiesResponse({
    required this.message,
  });

  AssetsAndPropertiesResponse copyWith({
    String? message,
  }) =>
      AssetsAndPropertiesResponse(
        message: message ?? this.message,
      );

  factory AssetsAndPropertiesResponse.fromJson(Map<String, dynamic> json) =>
      AssetsAndPropertiesResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
