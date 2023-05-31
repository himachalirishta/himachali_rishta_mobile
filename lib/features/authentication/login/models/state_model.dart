// To parse this JSON data, do
//
//     final stateModel = stateModelFromJson(jsonString);

import 'dart:convert';

List<StateModel> stateModelFromJson(String str) => List<StateModel>.from(json.decode(str).map((x) => StateModel.fromJson(x)));

String stateModelToJson(List<StateModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StateModel {
  final int id;
  final String name;
  final int countryId;

  StateModel({
    required this.id,
    required this.name,
    required this.countryId,
  });

  StateModel copyWith({
    int? id,
    String? name,
    int? countryId,
  }) =>
      StateModel(
        id: id ?? this.id,
        name: name ?? this.name,
        countryId: countryId ?? this.countryId,
      );

  factory StateModel.fromJson(Map<String, dynamic> json) => StateModel(
    id: json["id"],
    name: json["name"],
    countryId: json["country_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "country_id": countryId,
  };
}
