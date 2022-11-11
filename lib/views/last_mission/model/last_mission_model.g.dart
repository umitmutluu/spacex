// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestLaunchModel _$LatestLaunchModelFromJson(Map<String, dynamic> json) =>
    LatestLaunchModel(
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      failures: (json['failures'] as List<dynamic>?)
          ?.map((e) => Failure.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String?,
      crew: json['crew'] as List<dynamic>?,
      ships: json['ships'] as List<dynamic>?,
      capsules: json['capsules'] as List<dynamic>?,
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      launchpad: json['launchpad'] as String?,
      flightNumber: json['flightNumber'] as int?,
      name: json['name'] as String?,
      dateUtc: json['dateUtc'] == null
          ? null
          : DateTime.parse(json['dateUtc'] as String),
      dateUnix: json['dateUnix'] as int?,
      dateLocal: json['dateLocal'] == null
          ? null
          : DateTime.parse(json['dateLocal'] as String),
      datePrecision: json['datePrecision'] as String?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Core.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..tbd = json['tbd'] as bool?
      ..id = json['id'] as String?;

Map<String, dynamic> _$LatestLaunchModelToJson(LatestLaunchModel instance) =>
    <String, dynamic>{
      'links': instance.links,
      'failures': instance.failures,
      'details': instance.details,
      'crew': instance.crew,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'flightNumber': instance.flightNumber,
      'name': instance.name,
      'dateUtc': instance.dateUtc?.toIso8601String(),
      'dateUnix': instance.dateUnix,
      'dateLocal': instance.dateLocal?.toIso8601String(),
      'datePrecision': instance.datePrecision,
      'cores': instance.cores,
      'tbd': instance.tbd,
      'id': instance.id,
    };

Core _$CoreFromJson(Map<String, dynamic> json) => Core(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landingAttempt'] as bool?,
      landingSuccess: json['landingSuccess'],
      landingType: json['landingType'],
      landpad: json['landpad'],
    );

Map<String, dynamic> _$CoreToJson(Core instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landingAttempt': instance.landingAttempt,
      'landingSuccess': instance.landingSuccess,
      'landingType': instance.landingType,
      'landpad': instance.landpad,
    };

Failure _$FailureFromJson(Map<String, dynamic> json) => Failure(
      time: json['time'] as int?,
      altitude: json['altitude'],
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$FailureToJson(Failure instance) => <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };
