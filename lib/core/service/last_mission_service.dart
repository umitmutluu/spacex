import 'dart:convert';
import 'dart:developer';

import 'package:spacex/core/service/iLast_mission_service.dart';
import 'package:spacex/views/last_mission/model/last_mission_model.dart';

class SpaceXService extends ISpaceXService {
  SpaceXService(super.baseManager);

  @override
  Future<List<LatestLaunchModel>?> fetchWords() async {
    try {
      final response = await baseManager.fetchData(
        launchesPath,
      );
      return latestLaunchModelFromJson(jsonEncode(response));
    } catch (e) {
      log("error From SpaceXService fetchWords $e");
      return null;
    }
  }
}
