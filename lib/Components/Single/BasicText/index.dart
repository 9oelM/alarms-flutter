import 'package:alarms_flutter/Providers/DarkModeModel/index.dart';
import 'package:alarms_flutter/util/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class BasicText extends StatelessWidget {
  const BasicText(this.data, {this.fontSize = 42}) : super();
  final String data;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeModel>(builder: (context, darkMode, child) {
      return Text(
        data,
        textAlign: TextAlign.center,
        maxLines: 1,
        style: TextStyle(
          fontSize: this.fontSize,
          fontWeight: FontWeight.bold,
          color: getColorAtLevel(!darkMode.isDarkMode, ColorLevels.ONE),
          decoration: TextDecoration.none,
        ),
      );
    });
  }
}
