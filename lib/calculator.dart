import 'package:flutter/material.dart';
import 'style.dart';
import 'widgets/screen.dart';
import 'widgets/buttons.dart';

class Calculator extends StatefulWidget {
  Calculator({
    Key key,
  }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  _handleNumberButton(String value) {
    setState(() {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      backgroundColor: CalculatorBackgroundColor,
      body: Column(
        children: <Widget>[
          Screen(),
          Buttons(onTap: _handleNumberButton),
        ],
      ),
    );
  }
}
