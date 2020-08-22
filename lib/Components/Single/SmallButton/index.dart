import 'package:alarms_flutter/Components/Single/BasicText/index.dart';
import 'package:alarms_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(this.data, {@required this.onPressed}) : super();
  final String data;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        padding: EdgeInsets.all(10),
        fillColor: getColorAtLevel(false, ColorLevels.SEVEN),
        splashColor: getColorAtLevel(false, ColorLevels.SIX),
        child: BasicText(
          data,
          fontSize: 21,
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)));
  }
}
