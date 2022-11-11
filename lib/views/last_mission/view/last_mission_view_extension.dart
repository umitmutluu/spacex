import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/widgets/custom_padding.dart';
import 'package:spacex/views/last_mission/bloc/last_mission_bloc.dart';
import 'package:spacex/views/last_mission/widgets/circle_image_with_Loader.dart';

extension FailureDataItemWidget on LastMissionFailureState {
  Widget buildFailureWidget(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => BlocProvider.of<LastMissionBloc>(context).add(
        LastMissionInitialEvent(),
      ),
      child: ListView(
        shrinkWrap: false,
        children: const [
          Padding(
            padding: CustomPadding.verticalSmall(),
            child: Text(
              "Yenilemek için Kaydır...",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

extension LastMissionItemWidget on LastMissionSuccessState {
  Widget buildWidget(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: RefreshIndicator(
            onRefresh: () async =>
                BlocProvider.of<LastMissionBloc>(context).add(
              LastMissionInitialEvent(),
            ),
            child: ListView.separated(
              padding: const CustomPadding.verticalSmall(),
              itemCount: fetchItem.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(fetchItem[index].name!),
                subtitle: Text(fetchItem[index].details ?? '-'),
                leading: CircleImageWithLoader(
                    radius: 45, image: fetchItem[index].links!.patch!.small!),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        )
      ],
    );
  }
}
