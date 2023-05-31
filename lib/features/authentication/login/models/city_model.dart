// To parse this JSON data, do
//
//     final cityModel = cityModelFromJson(jsonString);

import 'dart:convert';

List<CityModel> cityModelFromJson(String str) => List<CityModel>.from(json.decode(str).map((x) => CityModel.fromJson(x)));

String cityModelToJson(List<CityModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CityModel {
  final int? id;
  final String? name;
  final int? stateId;

  CityModel({
    this.id,
    this.name,
    this.stateId,
  });

  CityModel copyWith({
    int? id,
    String? name,
    int? stateId,
  }) =>
      CityModel(
        id: id ?? this.id,
        name: name ?? this.name,
        stateId: stateId ?? this.stateId,
      );

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
    id: json["id"],
    name: json["name"],
    stateId: json["state_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "state_id": stateId,
  };
}
