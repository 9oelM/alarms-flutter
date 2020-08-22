import 'package:alarms_flutter/Providers/DarkModeModel/index.dart';
import 'package:alarms_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeModel>(
      builder: (context, darkMode, child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: getColorAtLevel(darkMode.isDarkMode, ColorLevels.ONE),
          child: Text("Total price: ${darkMode.isDarkMode}"),
        );
      },
    );
  }
}
