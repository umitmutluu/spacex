// To parse this JSON data, do
//
//     final latestLaunchModel = latestLaunchModelFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'last_mission_model.g.dart';

List<LatestLaunchModel> latestLaunchModelFromJson(String str) =>
    List<LatestLaunchModel>.from(
        json.decode(str).map((x) => LatestLaunchModel.fromJson(x)));

String latestLaunchModelToJson(List<LatestLaunchModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class LatestLaunchModel {
  LatestLaunchModel({
    this.links,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.cores,
  });

  Links? links;
  List<Failure>? failures;
  String? details;
  List<dynamic>? crew;
  List<dynamic>? ships;
  List<dynamic>? capsules;
  List<String>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  DateTime? dateUtc;
  int? dateUnix;
  DateTime? dateLocal;
  String? datePrecision;
  List<Core>? cores;
  bool? tbd;
  String? id;

  factory LatestLaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LatestLaunchModelFromJson(json);

  Map<String, dynamic> toJson() => _$LatestLaunchModelToJson(this);
}

@JsonSerializable()
class Core {
  Core({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
    this.landingSuccess,
    this.landingType,
    this.landpad,
  });

  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  dynamic landingSuccess;
  dynamic landingType;
  dynamic landpad;

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);

  Map<String, dynamic> toJson() => _$CoreToJson(this);
}

@JsonSerializable()
class Failure {
  Failure({
    this.time,
    this.altitude,
    this.reason,
  });

  int? time;
  dynamic altitude;
  String? reason;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);

  Map<String, dynamic> toJson() => _$FailureToJson(this);
}

@JsonSerializable()
class Links {
  Links({
    this.patch,
  });

  Patch? patch;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Patch {
  Patch({
    this.small,
    this.large,
  });

  String? small;
  String? large;

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);
}
