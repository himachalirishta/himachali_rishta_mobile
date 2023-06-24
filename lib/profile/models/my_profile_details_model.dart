// To parse this JSON data, do
//
//     final myProfileDetailsModel = myProfileDetailsModelFromJson(jsonString);

import 'dart:convert';

MyProfileDetailsModel myProfileDetailsModelFromJson(String str) =>
    MyProfileDetailsModel.fromJson(json.decode(str));

String myProfileDetailsModelToJson(MyProfileDetailsModel data) =>
    json.encode(data.toJson());

class MyProfileDetailsModel {
  Basic basic;
  EducationOccupation educationOccupation;
  PhysicalAttributes physicalAttributes;
  FamilyDetails familyDetails;
  HoroscopeSocial horoscopeSocial;
  AssetsProperties assetsProperties;
  ProfileDescription profileDescription;
  ContactDetails contactDetails;
  SuitableTimeToCall suitableTimeToCall;
  PartnerPreference partnerPreference;
  Expectation expectation;

  MyProfileDetailsModel({
    required this.basic,
    required this.educationOccupation,
    required this.physicalAttributes,
    required this.familyDetails,
    required this.horoscopeSocial,
    required this.assetsProperties,
    required this.profileDescription,
    required this.contactDetails,
    required this.suitableTimeToCall,
    required this.partnerPreference,
    required this.expectation,
  });

  MyProfileDetailsModel copyWith({
    Basic? basic,
    EducationOccupation? educationOccupation,
    PhysicalAttributes? physicalAttributes,
    FamilyDetails? familyDetails,
    HoroscopeSocial? horoscopeSocial,
    AssetsProperties? assetsProperties,
    ProfileDescription? profileDescription,
    ContactDetails? contactDetails,
    SuitableTimeToCall? suitableTimeToCall,
    PartnerPreference? partnerPreference,
    Expectation? expectation,
  }) =>
      MyProfileDetailsModel(
        basic: basic ?? this.basic,
        educationOccupation: educationOccupation ?? this.educationOccupation,
        physicalAttributes: physicalAttributes ?? this.physicalAttributes,
        familyDetails: familyDetails ?? this.familyDetails,
        horoscopeSocial: horoscopeSocial ?? this.horoscopeSocial,
        assetsProperties: assetsProperties ?? this.assetsProperties,
        profileDescription: profileDescription ?? this.profileDescription,
        contactDetails: contactDetails ?? this.contactDetails,
        suitableTimeToCall: suitableTimeToCall ?? this.suitableTimeToCall,
        partnerPreference: partnerPreference ?? this.partnerPreference,
        expectation: expectation ?? this.expectation,
      );

  factory MyProfileDetailsModel.fromJson(Map<String, dynamic> json) =>
      MyProfileDetailsModel(
        basic: Basic.fromJson(json["basic"]),
        educationOccupation:
            EducationOccupation.fromJson(json["education_occupation"]),
        physicalAttributes:
            PhysicalAttributes.fromJson(json["physical_attributes"]),
        familyDetails: FamilyDetails.fromJson(json["family_details"]),
        horoscopeSocial: HoroscopeSocial.fromJson(json["horoscope_social"]),
        assetsProperties: AssetsProperties.fromJson(json["assets_properties"]),
        profileDescription:
            ProfileDescription.fromJson(json["profile_description"]),
        contactDetails: ContactDetails.fromJson(json["contact_details"]),
        suitableTimeToCall:
            SuitableTimeToCall.fromJson(json["suitable_time_to_call"]),
        partnerPreference:
            PartnerPreference.fromJson(json["partner_preference"]),
        expectation: Expectation.fromJson(json["expectation"]),
      );

  Map<String, dynamic> toJson() => {
        "basic": basic.toJson(),
        "education_occupation": educationOccupation.toJson(),
        "physical_attributes": physicalAttributes.toJson(),
        "family_details": familyDetails.toJson(),
        "horoscope_social": horoscopeSocial.toJson(),
        "assets_properties": assetsProperties.toJson(),
        "profile_description": profileDescription.toJson(),
        "contact_details": contactDetails.toJson(),
        "suitable_time_to_call": suitableTimeToCall.toJson(),
        "partner_preference": partnerPreference.toJson(),
        "expectation": expectation.toJson(),
      };

  factory MyProfileDetailsModel.empty() => MyProfileDetailsModel(
        basic: Basic.empty(),
        educationOccupation: EducationOccupation.empty(),
        physicalAttributes: PhysicalAttributes.empty(),
        familyDetails: FamilyDetails.empty(),
        horoscopeSocial: HoroscopeSocial.empty(),
        assetsProperties: AssetsProperties.empty(),
        profileDescription: ProfileDescription.empty(),
        contactDetails: ContactDetails.empty(),
        suitableTimeToCall: SuitableTimeToCall.empty(),
        partnerPreference: PartnerPreference.empty(),
        expectation: Expectation.empty(),
      );
}

class AssetsProperties {
  String ownHouse;
  String ownCar;
  String ownAgriculturalLand;
  String ownCommericialLand;
  String ownAnyBusiness;

  AssetsProperties({
    required this.ownHouse,
    required this.ownCar,
    required this.ownAgriculturalLand,
    required this.ownCommericialLand,
    required this.ownAnyBusiness,
  });

  AssetsProperties copyWith({
    String? ownHouse,
    String? ownCar,
    String? ownAgriculturalLand,
    String? ownCommericialLand,
    String? ownAnyBusiness,
  }) =>
      AssetsProperties(
        ownHouse: ownHouse ?? this.ownHouse,
        ownCar: ownCar ?? this.ownCar,
        ownAgriculturalLand: ownAgriculturalLand ?? this.ownAgriculturalLand,
        ownCommericialLand: ownCommericialLand ?? this.ownCommericialLand,
        ownAnyBusiness: ownAnyBusiness ?? this.ownAnyBusiness,
      );

  factory AssetsProperties.fromJson(Map<String, dynamic> json) =>
      AssetsProperties(
        ownHouse: json["own_house"],
        ownCar: json["own_car"],
        ownAgriculturalLand: json["own_agricultural_land"],
        ownCommericialLand: json["own_commericial_land "],
        ownAnyBusiness: json["own_any_business"],
      );

  Map<String, dynamic> toJson() => {
        "own_house": ownHouse,
        "own_car": ownCar,
        "own_agricultural_land": ownAgriculturalLand,
        "own_commericial_land ": ownCommericialLand,
        "own_any_business": ownAnyBusiness,
      };

  factory AssetsProperties.empty() => AssetsProperties(
        ownHouse: "",
        ownCar: "",
        ownAgriculturalLand: "",
        ownCommericialLand: "",
        ownAnyBusiness: "",
      );
}

class Basic {
  String name;
  String martialStatus;
  String religion;
  String caste;
  DateTime dob;
  String height;
  String numberOfChilds;
  String childrenLivingWith;
  String childrenLivingWithIsApprove;
  String matriId;
  int oldId;

  Basic({
    required this.name,
    required this.martialStatus,
    required this.religion,
    required this.caste,
    required this.dob,
    required this.height,
    required this.numberOfChilds,
    required this.childrenLivingWith,
    required this.childrenLivingWithIsApprove,
    required this.matriId,
    required this.oldId,
  });

  Basic copyWith({
    String? name,
    String? martialStatus,
    String? religion,
    String? caste,
    DateTime? dob,
    String? height,
    String? numberOfChilds,
    String? childrenLivingWith,
    String? childrenLivingWithIsApprove,
    String? matriId,
    int? oldId,
  }) =>
      Basic(
        name: name ?? this.name,
        martialStatus: martialStatus ?? this.martialStatus,
        religion: religion ?? this.religion,
        caste: caste ?? this.caste,
        dob: dob ?? this.dob,
        height: height ?? this.height,
        numberOfChilds: numberOfChilds ?? this.numberOfChilds,
        childrenLivingWith: childrenLivingWith ?? this.childrenLivingWith,
        childrenLivingWithIsApprove:
            childrenLivingWithIsApprove ?? this.childrenLivingWithIsApprove,
        matriId: matriId ?? this.matriId,
        oldId: oldId ?? this.oldId,
      );

  factory Basic.fromJson(Map<String, dynamic> json) => Basic(
        name: json["name"],
        martialStatus: json["martial_status"],
        religion: json["religion"],
        caste: json["caste"],
        dob: DateTime.parse(json["dob"]),
        height: json["height"],
        numberOfChilds: json["number_of_childs"],
        childrenLivingWith: json["children_living_with"],
        childrenLivingWithIsApprove: json["children_living_with_is_approve"],
        matriId: json["matri_id"],
        oldId: json["old_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "martial_status": martialStatus,
        "religion": religion,
        "caste": caste,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "height": height,
        "number_of_childs": numberOfChilds,
        "children_living_with": childrenLivingWith,
        "children_living_with_is_approve": childrenLivingWithIsApprove,
        "matri_id": matriId,
        "old_id": oldId,
      };

  factory Basic.empty() => Basic(
        name: '',
        martialStatus: '',
        religion: '',
        caste: '',
        dob: DateTime.now(),
        height: '',
        numberOfChilds: '',
        childrenLivingWith: '',
        childrenLivingWithIsApprove: '',
        matriId: '',
        oldId: 0,
      );
}

class ContactDetails {
  String phone;
  String altNo;
  String whatsapp;
  String email;
  String hometown;
  String homeTownCountry;
  String homeTownState;
  String homeTownCity;
  String livingCountry;
  String livingState;
  String livingCity;

  ContactDetails({
    required this.phone,
    required this.altNo,
    required this.whatsapp,
    required this.email,
    required this.hometown,
    required this.homeTownCountry,
    required this.homeTownState,
    required this.homeTownCity,
    required this.livingCountry,
    required this.livingState,
    required this.livingCity,
  });

  ContactDetails copyWith({
    String? phone,
    String? altNo,
    String? whatsapp,
    String? email,
    String? hometown,
    String? homeTownCountry,
    String? homeTownState,
    String? homeTownCity,
    String? livingCountry,
    String? livingState,
    String? livingCity,
  }) =>
      ContactDetails(
        phone: phone ?? this.phone,
        altNo: altNo ?? this.altNo,
        whatsapp: whatsapp ?? this.whatsapp,
        email: email ?? this.email,
        hometown: hometown ?? this.hometown,
        homeTownCountry: homeTownCountry ?? this.homeTownCountry,
        homeTownState: homeTownState ?? this.homeTownState,
        homeTownCity: homeTownCity ?? this.homeTownCity,
        livingCountry: livingCountry ?? this.livingCountry,
        livingState: livingState ?? this.livingState,
        livingCity: livingCity ?? this.livingCity,
      );

  factory ContactDetails.fromJson(Map<String, dynamic> json) => ContactDetails(
        phone: json["phone"],
        altNo: json["alt_no"],
        whatsapp: json["whatsapp"],
        email: json["email"],
        hometown: json["hometown"],
        homeTownCountry: json["home_town_country"],
        homeTownState: json["home_town_state"],
        homeTownCity: json["home_town_city"],
        livingCountry: json["living_country"],
        livingState: json["living_state"],
        livingCity: json["living_city"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "alt_no": altNo,
        "whatsapp": whatsapp,
        "email": email,
        "hometown": hometown,
        "home_town_country": homeTownCountry,
        "home_town_state": homeTownState,
        "home_town_city": homeTownCity,
        "living_country": livingCountry,
        "living_state": livingState,
        "living_city": livingCity,
      };

  factory ContactDetails.empty() => ContactDetails(
        phone: '',
        altNo: '',
        whatsapp: '',
        email: '',
        hometown: '',
        homeTownCountry: '',
        homeTownState: '',
        homeTownCity: '',
        livingCountry: '',
        livingState: '',
        livingCity: '',
      );
}

class EducationOccupation {
  String education;
  String educationDetails;
  String employed;
  String occupation;
  String occupationDetails;
  String educationDetailsStatus;
  String occupationDetailStatus;
  String annualIncome;

  EducationOccupation({
    required this.education,
    required this.educationDetails,
    required this.employed,
    required this.occupation,
    required this.occupationDetails,
    required this.educationDetailsStatus,
    required this.occupationDetailStatus,
    required this.annualIncome,
  });

  EducationOccupation copyWith({
    String? education,
    String? educationDetails,
    String? employed,
    String? occupation,
    String? occupationDetails,
    String? educationDetailsStatus,
    String? occupationDetailStatus,
    String? annualIncome,
  }) =>
      EducationOccupation(
        education: education ?? this.education,
        educationDetails: educationDetails ?? this.educationDetails,
        employed: employed ?? this.employed,
        occupation: occupation ?? this.occupation,
        occupationDetails: occupationDetails ?? this.occupationDetails,
        educationDetailsStatus:
            educationDetailsStatus ?? this.educationDetailsStatus,
        occupationDetailStatus:
            occupationDetailStatus ?? this.occupationDetailStatus,
        annualIncome: annualIncome ?? this.annualIncome,
      );

  factory EducationOccupation.fromJson(Map<String, dynamic> json) =>
      EducationOccupation(
        education: json["education"],
        educationDetails: json["education_details"],
        employed: json["employed"],
        occupation: json["occupation"],
        occupationDetails: json["occupation_details"],
        educationDetailsStatus: json["education_details_status"],
        occupationDetailStatus: json["occupation_detail_status"],
        annualIncome: json["annual_income"],
      );

  Map<String, dynamic> toJson() => {
        "education": education,
        "education_details": educationDetails,
        "employed": employed,
        "occupation": occupation,
        "occupation_details": occupationDetails,
        "education_details_status": educationDetailsStatus,
        "occupation_detail_status": occupationDetailStatus,
        "annual_income": annualIncome,
      };

  factory EducationOccupation.empty() => EducationOccupation(
        education: '',
        educationDetails: '',
        employed: '',
        occupation: '',
        occupationDetails: '',
        educationDetailsStatus: '',
        occupationDetailStatus: '',
        annualIncome: '',
      );
}

class Expectation {
  dynamic expectations;
  String expectationsIsApprove;

  Expectation({
    this.expectations,
    required this.expectationsIsApprove,
  });

  Expectation copyWith({
    dynamic expectations,
    String? expectationsIsApprove,
  }) =>
      Expectation(
        expectations: expectations ?? this.expectations,
        expectationsIsApprove:
            expectationsIsApprove ?? this.expectationsIsApprove,
      );

  factory Expectation.fromJson(Map<String, dynamic> json) => Expectation(
        expectations: json["expectations"],
        expectationsIsApprove: json["expectations_is_approve"],
      );

  Map<String, dynamic> toJson() => {
        "expectations": expectations,
        "expectations_is_approve": expectationsIsApprove,
      };

  factory Expectation.empty() => Expectation(
        expectations: '',
        expectationsIsApprove: '',
      );
}

class FamilyDetails {
  String fatherOccupation;
  String motherOccupation;
  String familyType;
  String elderBrothers;
  String youngerBrothers;
  String marriedBrothers;
  String elderSister;
  String youngerSister;
  String marriedSister;
  String fatherOccoupatinStatus;
  String maotherOccupationStatus;

  FamilyDetails({
    required this.fatherOccupation,
    required this.motherOccupation,
    required this.familyType,
    required this.elderBrothers,
    required this.youngerBrothers,
    required this.marriedBrothers,
    required this.elderSister,
    required this.youngerSister,
    required this.marriedSister,
    required this.fatherOccoupatinStatus,
    required this.maotherOccupationStatus,
  });

  FamilyDetails copyWith({
    String? fatherOccupation,
    String? motherOccupation,
    String? familyType,
    String? elderBrothers,
    String? youngerBrothers,
    String? marriedBrothers,
    String? elderSister,
    String? youngerSister,
    String? marriedSister,
    String? fatherOccoupatinStatus,
    String? maotherOccupationStatus,
  }) =>
      FamilyDetails(
        fatherOccupation: fatherOccupation ?? this.fatherOccupation,
        motherOccupation: motherOccupation ?? this.motherOccupation,
        familyType: familyType ?? this.familyType,
        elderBrothers: elderBrothers ?? this.elderBrothers,
        youngerBrothers: youngerBrothers ?? this.youngerBrothers,
        marriedBrothers: marriedBrothers ?? this.marriedBrothers,
        elderSister: elderSister ?? this.elderSister,
        youngerSister: youngerSister ?? this.youngerSister,
        marriedSister: marriedSister ?? this.marriedSister,
        fatherOccoupatinStatus:
            fatherOccoupatinStatus ?? this.fatherOccoupatinStatus,
        maotherOccupationStatus:
            maotherOccupationStatus ?? this.maotherOccupationStatus,
      );

  factory FamilyDetails.fromJson(Map<String, dynamic> json) => FamilyDetails(
        fatherOccupation: json["father_occupation"],
        motherOccupation: json["mother_occupation"],
        familyType: json["family_type"],
        elderBrothers: json["elder_brothers"],
        youngerBrothers: json["younger_brothers"],
        marriedBrothers: json["married_brothers"],
        elderSister: json["elder_sister"],
        youngerSister: json["younger_sister"],
        marriedSister: json["married_sister"],
        fatherOccoupatinStatus: json["father_occoupatin_status"],
        maotherOccupationStatus: json["maother_occupation_status"],
      );

  Map<String, dynamic> toJson() => {
        "father_occupation": fatherOccupation,
        "mother_occupation": motherOccupation,
        "family_type": familyType,
        "elder_brothers": elderBrothers,
        "younger_brothers": youngerBrothers,
        "married_brothers": marriedBrothers,
        "elder_sister": elderSister,
        "younger_sister": youngerSister,
        "married_sister": marriedSister,
        "father_occoupatin_status": fatherOccoupatinStatus,
        "maother_occupation_status": maotherOccupationStatus,
      };

  factory FamilyDetails.empty() => FamilyDetails(
        fatherOccupation: '',
        motherOccupation: '',
        familyType: '',
        elderBrothers: '',
        youngerBrothers: '',
        marriedBrothers: '',
        elderSister: '',
        youngerSister: '',
        marriedSister: '',
        fatherOccoupatinStatus: '',
        maotherOccupationStatus: '',
      );
}

class HoroscopeSocial {
  String manglik;
  String birthPlace;
  String birthTime;
  String paternalSubcast;
  String maternalSubcast;
  String gotra;
  String rashi;
  String motherTongue;
  String patSubcastIsApprove;
  String maternalSubcastIsApprove;
  String birthPlaceIsApprove;
  String gotraIsApprove;

  HoroscopeSocial({
    required this.manglik,
    required this.birthPlace,
    required this.birthTime,
    required this.paternalSubcast,
    required this.maternalSubcast,
    required this.gotra,
    required this.rashi,
    required this.motherTongue,
    required this.patSubcastIsApprove,
    required this.maternalSubcastIsApprove,
    required this.birthPlaceIsApprove,
    required this.gotraIsApprove,
  });

  HoroscopeSocial copyWith({
    String? manglik,
    String? birthPlace,
    String? birthTime,
    String? paternalSubcast,
    String? maternalSubcast,
    String? gotra,
    String? rashi,
    String? motherTongue,
    String? patSubcastIsApprove,
    String? maternalSubcastIsApprove,
    String? birthPlaceIsApprove,
    String? gotraIsApprove,
  }) =>
      HoroscopeSocial(
        manglik: manglik ?? this.manglik,
        birthPlace: birthPlace ?? this.birthPlace,
        birthTime: birthTime ?? this.birthTime,
        paternalSubcast: paternalSubcast ?? this.paternalSubcast,
        maternalSubcast: maternalSubcast ?? this.maternalSubcast,
        gotra: gotra ?? this.gotra,
        rashi: rashi ?? this.rashi,
        motherTongue: motherTongue ?? this.motherTongue,
        patSubcastIsApprove: patSubcastIsApprove ?? this.patSubcastIsApprove,
        maternalSubcastIsApprove:
            maternalSubcastIsApprove ?? this.maternalSubcastIsApprove,
        birthPlaceIsApprove: birthPlaceIsApprove ?? this.birthPlaceIsApprove,
        gotraIsApprove: gotraIsApprove ?? this.gotraIsApprove,
      );

  factory HoroscopeSocial.fromJson(Map<String, dynamic> json) =>
      HoroscopeSocial(
        manglik: json["manglik"],
        birthPlace: json["birth_place"],
        birthTime: json["birth_time"],
        paternalSubcast: json["paternal_subcast"],
        maternalSubcast: json["maternal_subcast"],
        gotra: json["gotra"],
        rashi: json["rashi"],
        motherTongue: json["mother_tongue"],
        patSubcastIsApprove: json["pat_subcast_is_approve"],
        maternalSubcastIsApprove: json["maternal_subcast_is_approve"],
        birthPlaceIsApprove: json["birth_place_is_approve"],
        gotraIsApprove: json["gotra_is_approve"],
      );

  Map<String, dynamic> toJson() => {
        "manglik": manglik,
        "birth_place": birthPlace,
        "birth_time": birthTime,
        "paternal_subcast": paternalSubcast,
        "maternal_subcast": maternalSubcast,
        "gotra": gotra,
        "rashi": rashi,
        "mother_tongue": motherTongue,
        "pat_subcast_is_approve": patSubcastIsApprove,
        "maternal_subcast_is_approve": maternalSubcastIsApprove,
        "birth_place_is_approve": birthPlaceIsApprove,
        "gotra_is_approve": gotraIsApprove,
      };

  factory HoroscopeSocial.empty() => HoroscopeSocial(
        manglik: '',
        birthPlace: '',
        birthTime: '',
        paternalSubcast: '',
        maternalSubcast: '',
        gotra: '',
        rashi: '',
        motherTongue: '',
        patSubcastIsApprove: '',
        maternalSubcastIsApprove: '',
        birthPlaceIsApprove: '',
        gotraIsApprove: '',
      );
}

class PartnerPreference {
  String age;
  String relgion;
  String cast;
  String height;
  String lookingFor;
  String education;
  String empType;
  String occupation;
  String income;
  String manglik;
  String livingCountry;
  String livingState;
  String livingCity;
  String hometown;

  PartnerPreference({
    required this.age,
    required this.relgion,
    required this.cast,
    required this.height,
    required this.lookingFor,
    required this.education,
    required this.empType,
    required this.occupation,
    required this.income,
    required this.manglik,
    required this.livingCountry,
    required this.livingState,
    required this.livingCity,
    required this.hometown,
  });

  PartnerPreference copyWith({
    String? age,
    String? relgion,
    String? cast,
    String? height,
    String? lookingFor,
    String? education,
    String? empType,
    String? occupation,
    String? income,
    String? manglik,
    String? livingCountry,
    String? livingState,
    String? livingCity,
    String? hometown,
  }) =>
      PartnerPreference(
        age: age ?? this.age,
        relgion: relgion ?? this.relgion,
        cast: cast ?? this.cast,
        height: height ?? this.height,
        lookingFor: lookingFor ?? this.lookingFor,
        education: education ?? this.education,
        empType: empType ?? this.empType,
        occupation: occupation ?? this.occupation,
        income: income ?? this.income,
        manglik: manglik ?? this.manglik,
        livingCountry: livingCountry ?? this.livingCountry,
        livingState: livingState ?? this.livingState,
        livingCity: livingCity ?? this.livingCity,
        hometown: hometown ?? this.hometown,
      );

  factory PartnerPreference.fromJson(Map<String, dynamic> json) =>
      PartnerPreference(
        age: json["age"],
        relgion: json["relgion"],
        cast: json["cast"],
        height: json["height"],
        lookingFor: json["looking_for"],
        education: json["education"],
        empType: json["emp_type"],
        occupation: json["occupation"],
        income: json["income"],
        manglik: json["manglik"],
        livingCountry: json["living_country"],
        livingState: json["living_state"],
        livingCity: json["living_city"],
        hometown: json["hometown"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "relgion": relgion,
        "cast": cast,
        "height": height,
        "looking_for": lookingFor,
        "education": education,
        "emp_type": empType,
        "occupation": occupation,
        "income": income,
        "manglik": manglik,
        "living_country": livingCountry,
        "living_state": livingState,
        "living_city": livingCity,
        "hometown": hometown,
      };

  factory PartnerPreference.empty() => PartnerPreference(
        age: '',
        relgion: '',
        cast: '',
        height: '',
        lookingFor: '',
        education: '',
        empType: '',
        occupation: '',
        income: '',
        manglik: '',
        livingCountry: '',
        livingState: '',
        livingCity: '',
        hometown: '',
      );
}

class PhysicalAttributes {
  String height;
  String weight;
  String bloodGroup;
  String complexion;
  String bodyType;
  String diet;
  String specialCase;
  String disablity;

  PhysicalAttributes({
    required this.height,
    required this.weight,
    required this.bloodGroup,
    required this.complexion,
    required this.bodyType,
    required this.diet,
    required this.specialCase,
    required this.disablity,
  });

  PhysicalAttributes copyWith({
    String? height,
    String? weight,
    String? bloodGroup,
    String? complexion,
    String? bodyType,
    String? diet,
    String? specialCase,
    String? disablity,
  }) =>
      PhysicalAttributes(
        height: height ?? this.height,
        weight: weight ?? this.weight,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        complexion: complexion ?? this.complexion,
        bodyType: bodyType ?? this.bodyType,
        diet: diet ?? this.diet,
        specialCase: specialCase ?? this.specialCase,
        disablity: disablity ?? this.disablity,
      );

  factory PhysicalAttributes.fromJson(Map<String, dynamic> json) =>
      PhysicalAttributes(
        height: json["height"],
        weight: json["weight"],
        bloodGroup: json["blood_group"],
        complexion: json["complexion"],
        bodyType: json["body_type"],
        diet: json["diet"],
        specialCase: json["special_case"],
        disablity: json["disablity"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "weight": weight,
        "blood_group": bloodGroup,
        "complexion": complexion,
        "body_type": bodyType,
        "diet": diet,
        "special_case": specialCase,
        "disablity": disablity,
      };

  factory PhysicalAttributes.empty() => PhysicalAttributes(
        height: '',
        weight: '',
        bloodGroup: '',
        complexion: '',
        bodyType: '',
        diet: '',
        specialCase: '',
        disablity: '',
      );
}

class ProfileDescription {
  String description;
  String descriptionStatus;

  ProfileDescription({
    required this.description,
    required this.descriptionStatus,
  });

  ProfileDescription copyWith({
    String? description,
    String? descriptionStatus,
  }) =>
      ProfileDescription(
        description: description ?? this.description,
        descriptionStatus: descriptionStatus ?? this.descriptionStatus,
      );

  factory ProfileDescription.fromJson(Map<String, dynamic> json) =>
      ProfileDescription(
        description: json["description"],
        descriptionStatus: json["description_status"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "description_status": descriptionStatus,
      };

  factory ProfileDescription.empty() => ProfileDescription(
        description: '',
        descriptionStatus: '',
      );
}

class SuitableTimeToCall {
  String callTimeFrom;
  String callTimeTo;

  SuitableTimeToCall({
    required this.callTimeFrom,
    required this.callTimeTo,
  });

  SuitableTimeToCall copyWith({
    String? callTimeFrom,
    String? callTimeTo,
  }) =>
      SuitableTimeToCall(
        callTimeFrom: callTimeFrom ?? this.callTimeFrom,
        callTimeTo: callTimeTo ?? this.callTimeTo,
      );

  factory SuitableTimeToCall.fromJson(Map<String, dynamic> json) =>
      SuitableTimeToCall(
        callTimeFrom: json["call_time_from"],
        callTimeTo: json["call_time_to"],
      );

  Map<String, dynamic> toJson() => {
        "call_time_from": callTimeFrom,
        "call_time_to": callTimeTo,
      };

  factory SuitableTimeToCall.empty() => SuitableTimeToCall(
        callTimeFrom: '',
        callTimeTo: '',
      );
}
