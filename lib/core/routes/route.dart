import 'package:flutter/material.dart';
import 'package:spacex/core/widgets/emptyPage.dart';
import 'package:spacex/views/last_mission/view/last_mission_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (BuildContext context) => const LastMissionView());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ErrorPage());
    }
  }
}
