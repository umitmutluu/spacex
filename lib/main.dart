import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/routes/route.dart';
import 'package:spacex/core/utils/themes.dart';
import 'package:spacex/spacex_bloc_observer.dart';
import 'package:spacex/views/last_mission/bloc/last_mission_bloc.dart';

void main() {
  Bloc.observer = WeatherBlocObserver();
  runApp(BlocProvider(
    create: (_) => LastMissionBloc(),
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceXLaunches',
      initialRoute: "/",
      theme: Themes.lightTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
