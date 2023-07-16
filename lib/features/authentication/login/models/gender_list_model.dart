// To parse this JSON data, do
//
//     final genderListModel = genderListModelFromJson(jsonString);

import 'dart:convert';

GenderListModel genderListModelFromJson(String str) =>
    GenderListModel.fromJson(json.decode(str));

String genderListModelToJson(GenderListModel data) =>
    json.encode(data.toJson());

class GenderListModel {
  String message;
  List<String> data;

  GenderListModel({
    required this.message,
    required this.data,
  });

  GenderListModel copyWith({
    String? message,
    List<String>? data,
  }) =>
      GenderListModel(
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory GenderListModel.fromJson(Map<String, dynamic> json) =>
      GenderListModel(
        message: json["message"],
        data: List<String>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}
