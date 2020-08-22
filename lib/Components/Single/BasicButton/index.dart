import 'package:alarms_flutter/Components/Single/BasicText/index.dart';
import 'package:alarms_flutter/util/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  BasicButton(this.data, {@required this.onPressed});
  final GestureTapCallback onPressed;
  final String data;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: getColorAtLevel(false, ColorLevels.SEVEN),
        splashColor: getColorAtLevel(false, ColorLevels.SIX),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: BasicText(
              data,
            ),
          ),
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15)));
  }
}
