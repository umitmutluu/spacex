import 'package:bloc/bloc.dart';

import '../model/last_mission_model.dart';

part 'last_mission_event.dart';
part 'last_mission_state.dart';

class LastMissionBloc extends Bloc<LastMissionEvent, LastMissionState> {
  LastMissionBloc() : super(LastMissionInitialState()) {
    on<LastMissionEvent>((event, emit) {});
  }
}
