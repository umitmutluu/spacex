import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:spacex/core/service/base_service.dart';
import 'package:spacex/core/service/last_mission_service.dart';

import '../model/last_mission_model.dart';

part 'last_mission_event.dart';
part 'last_mission_state.dart';

class LastMissionBloc extends Bloc<LastMissionEvent, LastMissionState> {
  LastMissionBloc() : super(LastMissionInitialState()) {
    on<LastMissionEvent>((event, emit) async {
      if (event is LastMissionInitialEvent) {
        emit(LastMissionLoadingState());

        final result = await SpaceXService(BaseApiService()).fetchWords();
        if (result is List<LatestLaunchModel>) {
          emit(LastMissionSuccessState(result));
        } else {
          emit(LastMissionFailureState('Veri çekilirken hata'));
        }
      }
      if (event is LastMissionRefreshEvent) {
        emit(LastMissionLoadingState());

        final result = await SpaceXService(BaseApiService()).fetchWords();

        if (result is LatestLaunchModel) {
          emit(LastMissionSuccessState(result!));
        } else {
          emit(LastMissionFailureState('Veri çekilirken hata'));
          log("hata çıktı veri gelmedi");
        }
      }
    });
  }
}
