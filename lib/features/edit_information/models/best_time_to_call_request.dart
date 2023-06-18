// To parse this JSON data, do
//
//     final bestTimeToCallRequest = bestTimeToCallRequestFromJson(jsonString);

import 'dart:convert';

BestTimeToCallRequest bestTimeToCallRequestFromJson(String str) =>
    BestTimeToCallRequest.fromJson(json.decode(str));

String bestTimeToCallRequestToJson(BestTimeToCallRequest data) =>
    json.encode(data.toJson());

class BestTimeToCallRequest {
  String callTimeFrom;
  String callTimeTo;

  BestTimeToCallRequest({
    required this.callTimeFrom,
    required this.callTimeTo,
  });

  BestTimeToCallRequest copyWith({
    String? callTimeFrom,
    String? callTimeTo,
  }) =>
      BestTimeToCallRequest(
        callTimeFrom: callTimeFrom ?? this.callTimeFrom,
        callTimeTo: callTimeTo ?? this.callTimeTo,
      );

  factory BestTimeToCallRequest.fromJson(Map<String, dynamic> json) =>
      BestTimeToCallRequest(
        callTimeFrom: json["call_time_from"],
        callTimeTo: json["call_time_to"],
      );

  Map<String, dynamic> toJson() => {
        "call_time_from": callTimeFrom,
        "call_time_to": callTimeTo,
      };
}
// To parse this JSON data, do
//
//     final bestTimeToCallResponse = bestTimeToCallResponseFromJson(jsonString);

BestTimeToCallResponse bestTimeToCallResponseFromJson(String str) =>
    BestTimeToCallResponse.fromJson(json.decode(str));

String bestTimeToCallResponseToJson(BestTimeToCallResponse data) =>
    json.encode(data.toJson());

class BestTimeToCallResponse {
  String message;

  BestTimeToCallResponse({
    required this.message,
  });

  BestTimeToCallResponse copyWith({
    String? message,
  }) =>
      BestTimeToCallResponse(
        message: message ?? this.message,
      );

  factory BestTimeToCallResponse.fromJson(Map<String, dynamic> json) =>
      BestTimeToCallResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
