part of 'last_mission_bloc.dart';

abstract class LastMissionEvent {}

class LastMissionInitialEvent extends LastMissionEvent {
  LastMissionInitialEvent();
}

class LastMissionRefreshEvent extends LastMissionEvent {
  LastMissionRefreshEvent();
}
