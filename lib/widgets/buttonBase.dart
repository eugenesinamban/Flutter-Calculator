import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonBase extends StatelessWidget {
  final double width;
  final onTap;
  final String value;

  ButtonBase({Key key, this.width, this.onTap, this.value}) : super(key: key);

  _handleTap() {
    onTap(value);
  }

  static Widget _delete() {
    const String _svg_cve2c1 =
        '<svg viewBox="26.0 31.8 36.0 27.0" ><path transform="translate(26.0, 31.76)" d="M 9 0 L 0 13.5 L 9 27 L 36 27 L 36 0 L 9 0 Z M 15.75 3.509999990463257 L 22.5 10.26000022888184 L 29.25 3.510000228881836 L 32.4900016784668 6.75 L 25.7400016784668 13.5 L 32.4900016784668 20.25 L 29.25000190734863 23.48999977111816 L 22.50000190734863 16.73999977111816 L 15.75000190734863 23.48999977111816 L 12.51000213623047 20.25 L 19.26000213623047 13.5 L 12.51000213623047 6.75 L 15.75000190734863 3.509999990463257 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

    return SvgPicture.string(
      _svg_cve2c1,
      allowDrawingOutsideViewBox: true,
      fit: BoxFit.contain,
    );
  }

  Map<dynamic, dynamic> buttonIcon = {
    'delete': _delete(),
    'clearAll': 'CA',
    'clear': 'C',
    'divide': '/',
    'multiply': 'X',
    'subtract': '-',
    'add': '+',
    'negative': '+/-',
    'point': '.',
    'equal': '=',
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
