import 'package:flutter/material.dart';
import 'delete.dart';

class ButtonBase extends StatelessWidget {
  final double width;
  final onTap;
  final String value;

  ButtonBase({Key key, this.width, this.onTap, this.value}) : super(key: key);

  _handleTap() {
    onTap(value);
  }

  Map<dynamic, dynamic> buttonIcon = {
    'delete': Delete(),
    'clear': 'CA',
    'percent': '%',
    'divide': '/',
    'multiply': 'X',
    'subtract': '-',
    'add': '+',
    'negative' : '+/-',
    'point' : '.',
    'equal' : '=',
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        child: value == 'delete'
            ? buttonIcon[value]
            : Text(buttonIcon[value],
                style: Theme.of(context).textTheme.subtitle),
      ),
    );
  }
}
