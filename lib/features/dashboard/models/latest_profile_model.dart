// To parse this JSON data, do
//
//     final latestProfileModel = latestProfileModelFromJson(jsonString);

import 'dart:convert';

LatestProfileModel latestProfileModelFromJson(String str) => LatestProfileModel.fromJson(json.decode(str));

String latestProfileModelToJson(LatestProfileModel data) => json.encode(data.toJson());

class LatestProfileModel {
  final int currentPage;
  final List<Datum> data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<Link> links;
  final String nextPageUrl;
  final String path;
  final int perPage;
  final dynamic prevPageUrl;
  final int to;
  final int total;

  LatestProfileModel({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    required this.to,
    required this.total,
  });

  LatestProfileModel copyWith({
    int? currentPage,
    List<Datum>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Link>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) =>
      LatestProfileModel(
        currentPage: currentPage ?? this.currentPage,
        data: data ?? this.data,
        firstPageUrl: firstPageUrl ?? this.firstPageUrl,
        from: from ?? this.from,
        lastPage: lastPage ?? this.lastPage,
        lastPageUrl: lastPageUrl ?? this.lastPageUrl,
        links: links ?? this.links,
        nextPageUrl: nextPageUrl ?? this.nextPageUrl,
        path: path ?? this.path,
        perPage: perPage ?? this.perPage,
        prevPageUrl: prevPageUrl ?? this.prevPageUrl,
        to: to ?? this.to,
        total: total ?? this.total,
      );

  factory LatestProfileModel.fromJson(Map<String, dynamic> json) => LatestProfileModel(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  final String matriId;
  final String name;
  final String hometown;
  final String? age;
  final MartialStatus martialStatus;
  final Gender gender;
  final String education;
  final String occupation;
  final String? livingCityName;
  final dynamic image;

  Datum({
    required this.matriId,
    required this.name,
    required this.hometown,
    this.age,
    required this.martialStatus,
    required this.gender,
    required this.education,
    required this.occupation,
    this.livingCityName,
    this.image,
  });

  Datum copyWith({
    String? matriId,
    String? name,
    String? hometown,
    String? age,
    MartialStatus? martialStatus,
    Gender? gender,
    String? education,
    String? occupation,
    String? livingCityName,
    dynamic image,
  }) =>
      Datum(
        matriId: matriId ?? this.matriId,
        name: name ?? this.name,
        hometown: hometown ?? this.hometown,
        age: age ?? this.age,
        martialStatus: martialStatus ?? this.martialStatus,
        gender: gender ?? this.gender,
        education: education ?? this.education,
        occupation: occupation ?? this.occupation,
        livingCityName: livingCityName ?? this.livingCityName,
        image: image ?? this.image,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    matriId: json["matri_id"],
    name: json["name"],
    hometown: json["hometown"],
    age: json["age"],
    martialStatus: martialStatusValues.map[json["martial_status"]]!,
    gender: genderValues.map[json["gender"]]!,
    education: json["education"],
    occupation: json["occupation"],
    livingCityName: json["living_city_name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "matri_id": matriId,
    "name": name,
    "hometown": hometown,
    "age": age,
    "martial_status": martialStatusValues.reverse[martialStatus],
    "gender": genderValues.reverse[gender],
    "education": education,
    "occupation": occupation,
    "living_city_name": livingCityName,
    "image": image,
  };
}

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({
  "Female": Gender.FEMALE,
  "Male": Gender.MALE
});

enum MartialStatus { UNMARRID, UNMARRIED, DIVORCED }

final martialStatusValues = EnumValues({
  "Divorced": MartialStatus.DIVORCED,
  "Unmarrid": MartialStatus.UNMARRID,
  "Unmarried": MartialStatus.UNMARRIED
});

class Link {
  final String? url;
  final String label;
  final bool active;

  Link({
    this.url,
    required this.label,
    required this.active,
  });

  Link copyWith({
    String? url,
    String? label,
    bool? active,
  }) =>
      Link(
        url: url ?? this.url,
        label: label ?? this.label,
        active: active ?? this.active,
      );

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
