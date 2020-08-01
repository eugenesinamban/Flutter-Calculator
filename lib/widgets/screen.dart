import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  Screen({
    Key key,
  }) : super(key: key);
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
            '0',
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}
