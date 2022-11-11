import 'package:spacex/views/last_mission/model/last_mission_model.dart';

import 'base_service.dart';

abstract class ISpaceXService {
  late BaseApiService baseManager;

  ISpaceXService(this.baseManager);

  final String launchesPath = IWordServicePath.get.returnValue;

  Future<List<LatestLaunchModel>?> fetchWords();
}

enum IWordServicePath { get }

extension IWordServicePathExtension on IWordServicePath {
  String get returnValue {
    switch (this) {
      case IWordServicePath.get:
        return "v4/launches/";
    }
  }
}
