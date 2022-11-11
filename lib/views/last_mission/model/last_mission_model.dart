// To parse this JSON data, do
//
//     final latestLaunchModel = latestLaunchModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'last_mission_model.g.dart';

@JsonSerializable()
class LatestLaunchModel {
  LatestLaunchModel({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.success,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.launchLibraryId,
    this.id,
  });

  Fairings? fairings;
  Links? links;
  DateTime? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? net;
  int? window;
  bool? success;
  List<Failure>? failures;
  String? details;
  List<String>? crew;
  List<String>? ships;
  List<String>? capsules;
  List<String>? payloads;
  int? flightNumber;
  String? name;
  DateTime? dateUtc;
  int? dateUnix;
  DateTime? dateLocal;
  bool? upcoming;
  List<Core>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? launchLibraryId;
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
  });

  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  bool? landingSuccess;

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
  int? altitude;
  String? reason;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
  Map<String, dynamic> toJson() => _$FailureToJson(this);
}

@JsonSerializable()
class Fairings {
  Fairings({
    this.reused,
    this.recoveryAttempt,
    this.recovered,
    this.ships,
  });

  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;
  List<String>? ships;

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);
}

@JsonSerializable()
class Links {
  Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });

  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  String? presskit;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Flickr {
  Flickr({
    this.small,
    this.original,
  });

  List<dynamic>? small;
  List<String>? original;

  factory Flickr.fromJson(Map<String, dynamic> json) => _$FlickrFromJson(json);

  Map<String, dynamic> toJson() => _$FlickrToJson(this);
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

@JsonSerializable()
class Reddit {
  Reddit({
    this.campaign,
    this.launch,
    this.media,
    this.recovery,
  });

  String? campaign;
  String? launch;
  String? media;
  String? recovery;

  factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);

  Map<String, dynamic> toJson() => _$RedditToJson(this);
}
