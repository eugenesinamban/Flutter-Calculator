import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';

class Screen extends StatelessWidget {
  final String screenValue;
  final RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  final Function mathFunc = (Match match) => '${match[1]},';
  final displayScreen = createDisplay(length: 12);

  Screen(this.screenValue, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            displayScreen(double.parse(screenValue)),
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}