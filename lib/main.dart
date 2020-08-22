import 'package:alarms_flutter/Providers/DarkModeModel/index.dart';
import 'package:alarms_flutter/Screens/Home/index.dart';
import 'package:alarms_flutter/constants/routes.dart';
import 'package:alarms_flutter/util/opacityTransitionBuilder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Sound/index.dart';

void main() {
  runApp(AlarmsApp());
}

class AlarmsApp extends StatelessWidget {
  Route generate(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return new PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return Home();
          },
          transitionsBuilder: opacityTransitionBuilder,
        );
      case SOUND:
        return new PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return Sound();
          },
          transitionsBuilder: opacityTransitionBuilder,
        );
      default:
        throw Error();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DarkModeModel()),
      ],
      child: WidgetsApp(
          onGenerateRoute: generate,
          // onUnknownRoute: unKnownRoute,
          initialRoute: HOME,
          color: Colors.black),
    );
  }
}
