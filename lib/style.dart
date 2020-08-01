import 'package:flutter/material.dart';

const double LargeTextSize = 96.0;
const double MediumTextSize = 60.0;
const double TitleTextSize = 22.0;

const String FontNameDefault = 'Montserrat';

const Color TextColorDark = Colors.black54;
const Color TextColorLight = Colors.white;

const Color CalculatorBackgroundColor = Color(0xffdde4ee);

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: TitleTextSize,
  color: TextColorLight,
);

const ScreenTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: TextColorDark,
);

const ButtonScreenStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: TextColorDark,
);