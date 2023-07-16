// To parse this JSON data, do
//
//     final educationListModel = educationListModelFromJson(jsonString);

import 'dart:convert';

List<EducationListModel> educationListModelFromJson(String str) => List<EducationListModel>.from(json.decode(str).map((x) => EducationListModel.fromJson(x)));

String educationListModelToJson(List<EducationListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EducationListModel {
  int id;
  String name;
  int status;
  int sortOrder;

  EducationListModel({
    required this.id,
    required this.name,
    required this.status,
    required this.sortOrder,
  });

  EducationListModel copyWith({
    int? id,
    String? name,
    int? status,
    int? sortOrder,
  }) =>
      EducationListModel(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        sortOrder: sortOrder ?? this.sortOrder,
      );

  factory EducationListModel.fromJson(Map<String, dynamic> json) => EducationListModel(
    id: json["id"],
    name: json["name"],
    status: json["status"],
    sortOrder: json["sort_order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
    "sort_order": sortOrder,
  };
}
