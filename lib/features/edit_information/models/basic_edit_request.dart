// To parse this JSON data, do
//
//     final basicEditRequest = basicEditRequestFromJson(jsonString);

import 'dart:convert';

import 'package:himachali_rishta/helpers/date_time_helper.dart';

BasicEditRequest basicEditRequestFromJson(String str) => BasicEditRequest.fromJson(json.decode(str));

String basicEditRequestToJson(BasicEditRequest data) => json.encode(data.toJson());

class BasicEditRequest {
  String name;
  String maritalStatus;
  String religion;
  String cast;
  String height;
  DateTime dob;
  String numberOfChilds;
  String childrenLivingWith;

  BasicEditRequest({
    required this.name,
    required this.maritalStatus,
    required this.religion,
    required this.cast,
    required this.height,
    required this.dob,
    required this.numberOfChilds,
    required this.childrenLivingWith,
  });

  BasicEditRequest copyWith({
    String? name,
    String? maritalStatus,
    String? religion,
    String? cast,
    String? height,
    DateTime? dob,
    String? numberOfChilds,
    String? childrenLivingWith,
  }) =>
      BasicEditRequest(
        name: name ?? this.name,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        religion: religion ?? this.religion,
        cast: cast ?? this.cast,
        height: height ?? this.height,
        dob: dob ?? this.dob,
        numberOfChilds: numberOfChilds ?? this.numberOfChilds,
        childrenLivingWith: childrenLivingWith ?? this.childrenLivingWith,
      );

  factory BasicEditRequest.fromJson(Map<String, dynamic> json) => BasicEditRequest(
    name: json["name"],
    maritalStatus: json["marital_status"],
    religion: json["religion"],
    cast: json["cast"],
    height: json["height"],
    dob: DateTime.parse(json["dob"]),
    numberOfChilds: json["number_of_childs"],
    childrenLivingWith: json["children_living_with"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "marital_status": maritalStatus,
    "religion": religion,
    "cast": cast,
    "height": height,
    "dob": dob.toApiFormat,
    "number_of_childs": numberOfChilds,
    "children_living_with": childrenLivingWith,
  };
}

BasicEditRequestResponse basicEditRequestResponseFromJson(String str) => BasicEditRequestResponse.fromJson(json.decode(str));

String basicEditRequestResponseToJson(BasicEditRequestResponse data) => json.encode(data.toJson());

class BasicEditRequestResponse {
  String message;

  BasicEditRequestResponse({
    required this.message,
  });

  BasicEditRequestResponse copyWith({
    String? message,
  }) =>
      BasicEditRequestResponse(
        message: message ?? this.message,
      );

  factory BasicEditRequestResponse.fromJson(Map<String, dynamic> json) => BasicEditRequestResponse(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}

