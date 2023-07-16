// To parse this JSON data, do
//
//     final profileForModel = profileForModelFromJson(jsonString);

import 'dart:convert';

ProfileForModel profileForModelFromJson(String str) => ProfileForModel.fromJson(json.decode(str));

String profileForModelToJson(ProfileForModel data) => json.encode(data.toJson());

class ProfileForModel {
  String message;
  List<Datum> data;

  ProfileForModel({
    required this.message,
    required this.data,
  });

  ProfileForModel copyWith({
    String? message,
    List<Datum>? data,
  }) =>
      ProfileForModel(
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ProfileForModel.fromJson(Map<String, dynamic> json) => ProfileForModel(
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String name;
  String status;

  Datum({
    required this.id,
    required this.name,
    required this.status,
  });

  Datum copyWith({
    int? id,
    String? name,
    String? status,
  }) =>
      Datum(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
  };
}
