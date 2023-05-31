// To parse this JSON data, do
//
//     final countryModel = countryModelFromJson(jsonString);

import 'dart:convert';

List<CountryModel> countryModelFromJson(String str) => List<CountryModel>.from(json.decode(str).map((x) => CountryModel.fromJson(x)));

String countryModelToJson(List<CountryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryModel {
  final int? id;
  final String? sortname;
  final String? name;
  final int? phonecode;

  CountryModel({
    this.id,
    this.sortname,
    this.name,
    this.phonecode,
  });

  CountryModel copyWith({
    int? id,
    String? sortname,
    String? name,
    int? phonecode,
  }) =>
      CountryModel(
        id: id ?? this.id,
        sortname: sortname ?? this.sortname,
        name: name ?? this.name,
        phonecode: phonecode ?? this.phonecode,
      );

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
    id: json["id"],
    sortname: json["sortname"],
    name: json["name"],
    phonecode: json["phonecode"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sortname": sortname,
    "name": name,
    "phonecode": phonecode,
  };
}
