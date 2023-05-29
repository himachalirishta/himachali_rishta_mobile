// To parse this JSON data, do
//
//     final casteModel = casteModelFromJson(jsonString);

import 'dart:convert';

List<CasteModel> casteModelFromJson(String str) => List<CasteModel>.from(json.decode(str).map((x) => CasteModel.fromJson(x)));

String casteModelToJson(List<CasteModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CasteModel {
  final int id;
  final String name;
  final int religion;
  final int sortorder;
  final Status status;

  CasteModel({
    required this.id,
    required this.name,
    required this.religion,
    required this.sortorder,
    required this.status,
  });

  CasteModel copyWith({
    int? id,
    String? name,
    int? religion,
    int? sortorder,
    Status? status,
  }) =>
      CasteModel(
        id: id ?? this.id,
        name: name ?? this.name,
        religion: religion ?? this.religion,
        sortorder: sortorder ?? this.sortorder,
        status: status ?? this.status,
      );

  factory CasteModel.fromJson(Map<String, dynamic> json) => CasteModel(
    id: json["id"],
    name: json["name"],
    religion: json["religion"],
    sortorder: json["sortorder"],
    status: statusValues.map[json["status"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "religion": religion,
    "sortorder": sortorder,
    "status": statusValues.reverse[status],
  };
}

enum Status { ACTIVE }

final statusValues = EnumValues({
  "Active": Status.ACTIVE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
