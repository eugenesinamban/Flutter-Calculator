import 'package:flutter/material.dart';
import 'buttonBase.dart';
import 'buttonNumber.dart';

class Buttons extends StatelessWidget {
  Buttons({Key key, @required this.onTap}) : super(key: key);

  final onTap;

  _handleTap(String value) {
    onTap(value);
  }

  @override
  Widget build(BuildContext context) {
    final double _buttonWidth = MediaQuery.of(context).size.width * 0.25;
    return Expanded(
      flex: 6,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // row 1
            // delete, clear all, percent, divide
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'delete'),
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'clearAll'),
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'clear'),
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'divide'),
                ],
              ),
            ),
            // row 2
            // 7, 8, 9, multiply
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ButtonNumber(
                      number: '7', width: _buttonWidth, onTap: _handleTap),
                  ButtonNumber(
                      number: '8', width: _buttonWidth, onTap: _handleTap),
                  ButtonNumber(
                      number: '9', width: _buttonWidth, onTap: _handleTap),
                  ButtonBase(
                      width: _buttonWidth,
                      onTap: _handleTap,
                      value: 'multiply'),
                ],
              ),
            ),
            // row 3
            // 4, 5, 6, subtract
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ButtonNumber(
                      number: '4', width: _buttonWidth, onTap: _handleTap),
                  ButtonNumber(
                      number: '5', width: _buttonWidth, onTap: _handleTap),
                  ButtonNumber(
                      number: '6', width: _buttonWidth, onTap: _handleTap),
                  ButtonBase(
                      width: _buttonWidth,
                      onTap: _handleTap,
                      value: 'subtract'),
                ],
              ),
            ),
            // row 4
            // 1, 2, 3, add
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ButtonNumber(
                      number: '1', width: _buttonWidth, onTap: _handleTap),
                  ButtonNumber(
                      number: '2', width: _buttonWidth, onTap: _handleTap),
                  ButtonNumber(
                      number: '3', width: _buttonWidth, onTap: _handleTap),
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'add'),
                ],
              ),
            ),
            // row 5
            // negative, 0, point, equal
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ButtonBase(
                      width: _buttonWidth,
                      onTap: _handleTap,
                      value: 'negative'),
                  ButtonNumber(
                      number: '0', width: _buttonWidth, onTap: _handleTap),
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'point'),
                  ButtonBase(
                      width: _buttonWidth, onTap: _handleTap, value: 'equal'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
