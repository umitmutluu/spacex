part of 'last_mission_bloc.dart';

abstract class LastMissionState {}

class LastMissionInitialState extends LastMissionState {}

class LastMissionSuccessState extends LastMissionState {
  late List<LatestLaunchModel> fetchItem;

  LastMissionSuccessState(this.fetchItem);
}

class LastMissionFailureState extends LastMissionState {
  final String? message;

  LastMissionFailureState(this.message);
}

class LastMissionLoadingState extends LastMissionState {}
