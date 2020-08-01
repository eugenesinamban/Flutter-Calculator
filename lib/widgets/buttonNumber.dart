import 'package:flutter/material.dart';
import 'buttonBase.dart';

class ButtonNumber extends ButtonBase {
  final String number;
  final double width;
  final onTap;
  ButtonNumber({Key key, this.number, this.width, this.onTap}) : super(width: width, onTap: onTap);

  _handleTap() {
    onTap(number);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        child: Text(
          number,
          style: Theme.of(context).textTheme.subtitle,
        ),
      ),
    );
  }
}
