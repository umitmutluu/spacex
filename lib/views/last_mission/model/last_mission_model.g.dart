// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestLaunchModel _$LatestLaunchModelFromJson(Map<String, dynamic> json) =>
    LatestLaunchModel(
      fairings: json['fairings'] == null
          ? null
          : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['staticFireDateUtc'] == null
          ? null
          : DateTime.parse(json['staticFireDateUtc'] as String),
      staticFireDateUnix: json['staticFireDateUnix'] as int?,
      net: json['net'] as bool?,
      window: json['window'] as int?,
      success: json['success'] as bool?,
      failures: (json['failures'] as List<dynamic>?)
          ?.map((e) => Failure.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String?,
      crew: (json['crew'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ships:
          (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
      capsules: (json['capsules'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      flightNumber: json['flightNumber'] as int?,
      name: json['name'] as String?,
      dateUtc: json['dateUtc'] == null
          ? null
          : DateTime.parse(json['dateUtc'] as String),
      dateUnix: json['dateUnix'] as int?,
      dateLocal: json['dateLocal'] == null
          ? null
          : DateTime.parse(json['dateLocal'] as String),
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Core.fromJson(e as Map<String, dynamic>))
          .toList(),
      autoUpdate: json['autoUpdate'] as bool?,
      tbd: json['tbd'] as bool?,
      launchLibraryId: json['launchLibraryId'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$LatestLaunchModelToJson(LatestLaunchModel instance) =>
    <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'staticFireDateUtc': instance.staticFireDateUtc?.toIso8601String(),
      'staticFireDateUnix': instance.staticFireDateUnix,
      'net': instance.net,
      'window': instance.window,
      'success': instance.success,
      'failures': instance.failures,
      'details': instance.details,
      'crew': instance.crew,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'flightNumber': instance.flightNumber,
      'name': instance.name,
      'dateUtc': instance.dateUtc?.toIso8601String(),
      'dateUnix': instance.dateUnix,
      'dateLocal': instance.dateLocal?.toIso8601String(),
      'upcoming': instance.upcoming,
      'cores': instance.cores,
      'autoUpdate': instance.autoUpdate,
      'tbd': instance.tbd,
      'launchLibraryId': instance.launchLibraryId,
      'id': instance.id,
    };

Core _$CoreFromJson(Map<String, dynamic> json) => Core(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landingAttempt'] as bool?,
      landingSuccess: json['landingSuccess'] as bool?,
    );

Map<String, dynamic> _$CoreToJson(Core instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landingAttempt': instance.landingAttempt,
      'landingSuccess': instance.landingSuccess,
    };

Failure _$FailureFromJson(Map<String, dynamic> json) => Failure(
      time: json['time'] as int?,
      altitude: json['altitude'] as int?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$FailureToJson(Failure instance) => <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };

Fairings _$FairingsFromJson(Map<String, dynamic> json) => Fairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recoveryAttempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ships:
          (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recoveryAttempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ships': instance.ships,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
      reddit: json['reddit'] == null
          ? null
          : Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
      flickr: json['flickr'] == null
          ? null
          : Flickr.fromJson(json['flickr'] as Map<String, dynamic>),
      presskit: json['presskit'] as String?,
      webcast: json['webcast'] as String?,
      youtubeId: json['youtubeId'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'reddit': instance.reddit,
      'flickr': instance.flickr,
      'presskit': instance.presskit,
      'webcast': instance.webcast,
      'youtubeId': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

Flickr _$FlickrFromJson(Map<String, dynamic> json) => Flickr(
      small: json['small'] as List<dynamic>?,
      original: (json['original'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$FlickrToJson(Flickr instance) => <String, dynamic>{
      'small': instance.small,
      'original': instance.original,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Reddit _$RedditFromJson(Map<String, dynamic> json) => Reddit(
      campaign: json['campaign'] as String?,
      launch: json['launch'] as String?,
      media: json['media'] as String?,
      recovery: json['recovery'] as String?,
    );

Map<String, dynamic> _$RedditToJson(Reddit instance) => <String, dynamic>{
      'campaign': instance.campaign,
      'launch': instance.launch,
      'media': instance.media,
      'recovery': instance.recovery,
    };
