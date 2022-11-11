part of 'last_mission_bloc.dart';

abstract class LastMissionState {}

class LastMissionInitialState extends LastMissionState {}

class LastMissionSuccessState extends LastMissionState {
  late LatestLaunchModel redditModel;

  LastMissionSuccessState(this.redditModel);
}

class LastMissionFailureState extends LastMissionState {
  final String? message;

  LastMissionFailureState(this.message);
}

class LastMissionLoadingState extends LastMissionState {}
