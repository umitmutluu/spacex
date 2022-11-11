import 'package:flutter/material.dart';

class CustomPadding extends EdgeInsets {
  const CustomPadding() : super.all(10.0);

  const CustomPadding.bigAll() : super.all(40);

  const CustomPadding.smallAll() : super.all(20);

  const CustomPadding.horizontalBig() : super.symmetric(horizontal: 40);

  const CustomPadding.verticalBig() : super.symmetric(vertical: 40);

  const CustomPadding.horizontalSmall() : super.symmetric(horizontal: 20);

  const CustomPadding.verticalSmall() : super.symmetric(vertical: 20);
  const CustomPadding.verticalXSmall() : super.symmetric(vertical: 10);
}
