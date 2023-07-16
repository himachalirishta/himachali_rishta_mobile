// To parse this JSON data, do
//
//     final occupationListModel = occupationListModelFromJson(jsonString);

import 'dart:convert';

List<OccupationListModel> occupationListModelFromJson(String str) => List<OccupationListModel>.from(json.decode(str).map((x) => OccupationListModel.fromJson(x)));

String occupationListModelToJson(List<OccupationListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OccupationListModel {
  int id;
  String name;
  int religion;
  int sortorder;
  Status status;

  OccupationListModel({
    required this.id,
    required this.name,
    required this.religion,
    required this.sortorder,
    required this.status,
  });

  OccupationListModel copyWith({
    int? id,
    String? name,
    int? religion,
    int? sortorder,
    Status? status,
  }) =>
      OccupationListModel(
        id: id ?? this.id,
        name: name ?? this.name,
        religion: religion ?? this.religion,
        sortorder: sortorder ?? this.sortorder,
        status: status ?? this.status,
      );

  factory OccupationListModel.fromJson(Map<String, dynamic> json) => OccupationListModel(
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
