// To parse this JSON data, do
//
//     final religionModel = religionModelFromJson(jsonString);

import 'dart:convert';

List<ReligionModel> religionModelFromJson(String str) => List<ReligionModel>.from(json.decode(str).map((x) => ReligionModel.fromJson(x)));

String religionModelToJson(List<ReligionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReligionModel {
  final int id;
  final String name;
  final int sortorder;
  final String status;

  ReligionModel({
    required this.id,
    required this.name,
    required this.sortorder,
    required this.status,
  });

  ReligionModel copyWith({
    int? id,
    String? name,
    int? sortorder,
    String? status,
  }) =>
      ReligionModel(
        id: id ?? this.id,
        name: name ?? this.name,
        sortorder: sortorder ?? this.sortorder,
        status: status ?? this.status,
      );

  factory ReligionModel.fromJson(Map<String, dynamic> json) => ReligionModel(
    id: json["id"],
    name: json["name"],
    sortorder: json["sortorder"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "sortorder": sortorder,
    "status": status,
  };

  factory ReligionModel.empty() => ReligionModel(
    id: -1,
    name: '',
    sortorder: 0,
    status: '',
  );
}
