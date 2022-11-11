import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/views/last_mission/bloc/last_mission_bloc.dart';
import 'package:spacex/views/last_mission/view/last_mission_view_extension.dart';
import 'package:spacex/views/last_mission/widgets/widget_not_found_exception.dart';

class LastMissionView extends StatelessWidget {
  const LastMissionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LastMissionBloc, LastMissionState>(
        builder: (context, state) {
      return buildScaffold(state, context);
    });
  }

  Widget buildScaffold(LastMissionState state, BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("SpaceX Latest Launch")),
      body: buildBodyText(state, context),
    );
  }

  Widget buildBodyText(LastMissionState state, BuildContext context) {
    if (state is LastMissionInitialState) {
      BlocProvider.of<LastMissionBloc>(context).add(
        LastMissionInitialEvent(),
      );
    } else if (state is LastMissionLoadingState) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is LastMissionSuccessState) {
      return state.buildWidget(context);
    } else if (state is LastMissionFailureState) {
      return state.buildFailureWidget(context);
    }
    throw WidgetNotFoundException<LastMissionView, LastMissionState>(state);
  }
}
