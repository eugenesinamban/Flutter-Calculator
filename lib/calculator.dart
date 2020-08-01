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
  String _screenValue = '0';
  double _memoryValue = 0;
  String _currentOperation;

  // helpers

  bool _isOperator(String value) {
    if ('delete' == value ||
        'clearAll' == value ||
        'clear' == value ||
        'divide' == value ||
        'multiply' == value ||
        'subtract' == value ||
        'add' == value ||
        'negative' == value ||
        'point' == value ||
        'equal' == value) {
      return true;
    }
    return false;
  }

  bool _screenShowsZero() {
    if ('0' == _screenValue) {
      return true;
    }
    return false;
  }

  bool _screenValueNotMax() {
    if (9 > _screenValue.length) {
      return true;
    }
    return false;
  }

  void _addOperator(String value) {
    setState(() {
      _currentOperation = value;
      _memoryValue = double.parse(_screenValue);
      _screenValue = '0';
    });
  }

  void _compute(value) {
    switch (value) {
      case 'add':
        _memoryValue += double.parse(_screenValue);
        break;
      case 'subtract':
        _memoryValue -= double.parse(_screenValue);
        break;
      case 'multiply':
        _memoryValue *= double.parse(_screenValue);
        break;
      case 'divide':
        _memoryValue /= double.parse(_screenValue);
        break;
      default:
    }
    _screenValue = _memoryValue.toString();
  }

  _handleNumberButton(String value) {
    setState(() {
      if (_isOperator(value)) {
        switch (value) {
          case 'delete':
            print(value);

            if (1 == _screenValue.length) {
              _screenValue = '0';
            }

            if (!_screenShowsZero()) {
              _screenValue = _screenValue.substring(0, _screenValue.length - 1);
            }

            break;
          case 'clearAll':
            _screenValue = '0';
            _memoryValue = 0;
            break;
          case 'clear':
            _screenValue = '0';
            break;

          case 'divide':
            if ('divide' == _currentOperation) {
              break;
            }
            _addOperator('divide');
            break;

          case 'multiply':
            if ('multiply' == _currentOperation) {
              break;
            }
            _addOperator('multiply');
            break;

          case 'subtract':
            if ('substract' == _currentOperation) {
              break;
            }
            _addOperator('subtract');
            break;

          case 'add':
            if ('add' == _currentOperation) {
              break;
            }
            _addOperator('add');
            break;

          case 'negative':
            if (_screenValueNotMax()) {
              _screenValue = (int.parse(_screenValue) * -1).toString();
            }
            break;
          case 'point':
            if (_screenValueNotMax() && !_screenValue.contains('.')) {
              _screenValue += '.';
            }
            break;
          case 'equal':
            if (0 == _memoryValue && _currentOperation == null) {
              break;
            }
            _compute(_currentOperation);
            break;
          default:
        }
      } else {
        // is numeric
        if (_screenShowsZero()) {
          _screenValue = value;
        } else {
          if (_screenValueNotMax()) {
            _screenValue += value;
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      backgroundColor: CalculatorBackgroundColor,
      body: Column(
        children: <Widget>[
          Screen(_screenValue),
          Buttons(onTap: _handleNumberButton),
        ],
      ),
    );
  }
}
