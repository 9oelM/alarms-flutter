import 'dart:developer';

import 'package:alarms_flutter/Components/Multi/ItemWithHeader/index.dart';
import 'package:alarms_flutter/Layouts/GeneralBackground/index.dart';
import 'package:alarms_flutter/Providers/DarkModeModel/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Components/Single/BasicButton/index.dart';
import 'Components/Single/BasicText/index.dart';

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
              Center(
                  child: Row(children: [
                Expanded(
                    flex: 1,
                    child: Column(children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: BasicText('Alarms')),
                      ...[
                        {
                          "headerText": 'Start',
                          "itemText": '07:30',
                          "onItemPressed": () => log('adf'),
                        },
                        {
                          "headerText": "End",
                          "itemText": '09:30',
                          "onItemPressed": () => log('adsf'),
                        },
                        {
                          "headerText": "Interval",
                          "itemText": '10 mins',
                          "onItemPressed": () => log('adsf'),
                        }
                      ].map((item) => ItemWidthHeader(
                          item['headerText'],
                          BasicButton(
                            item['itemText'],
                            onPressed: item['onItemPressed'],
                          )))
                    ]))
              ]))
            ]);
          },
          color: Colors.black),
    );
  }
}
