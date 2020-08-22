import 'dart:developer';

import 'package:alarms_flutter/Layouts/GeneralBackground/index.dart';
import 'package:alarms_flutter/Providers/DarkModeModel/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Components/BasicButton/index.dart';
import 'Components/BasicText/index.dart';

void main() {
  runApp(AlarmsApp());
}

class AlarmsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DarkModeModel()),
      ],
      child: WidgetsApp(
          builder: (context, widget) {
            return GeneralBackground(children: <Widget>[
              BasicText(
                'Alarms',
              ),
              BasicButton(
                'test',
                onPressed: () => log('asdf'),
              )
            ]);
          },
          color: Colors.black),
    );
  }
}
