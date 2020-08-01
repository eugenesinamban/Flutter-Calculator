import 'package:flutter/material.dart';
import 'calculator.dart';
import 'style.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _theme(),
      home: Calculator(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppBarTextStyle,
          ),
        ),
        textTheme: TextTheme(
          title: ScreenTextStyle,
          subtitle: ButtonScreenStyle,
        ));
  }
}
