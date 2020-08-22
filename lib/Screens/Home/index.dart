import 'dart:developer';

import 'package:alarms_flutter/Components/Multi/ItemWithHeader/index.dart';
import 'package:alarms_flutter/Components/Multi/SwitchWithHeader/index.dart';
import 'package:alarms_flutter/Components/Single/BasicButton/index.dart';
import 'package:alarms_flutter/Components/Single/BasicText/index.dart';
import 'package:alarms_flutter/Components/Single/SmallButton/index.dart';
import 'package:alarms_flutter/Components/Single/Spacing/index.dart';
import 'package:alarms_flutter/Layouts/GeneralBackground/index.dart';
import 'package:alarms_flutter/constants/routes.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home() : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.primaryDelta < 0) Navigator.of(context).pushNamed(SOUND);
        },
        child: GeneralBackground(children: <Widget>[
          Center(
              child: Row(children: [
            Expanded(
                flex: 1,
                child: ListView(children: [
                  Column(children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: BasicText('Alarms')),
                    verticalSpacing30,
                    SwitchWithHeader(
                      'Enabled',
                      onChanged: (_) => {},
                      value: true,
                    ),
                    verticalSpacing30,
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
                    ].map((item) => Column(children: [
                          ItemWithHeader(
                              item['headerText'],
                              BasicButton(
                                item['itemText'],
                                onPressed: item['onItemPressed'],
                              )),
                          verticalSpacing20,
                        ])),
                    ItemWithHeader(
                        'Days',
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: SmallButton(
                              'M',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                            Expanded(
                                child: SmallButton(
                              'T',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                            Expanded(
                                child: SmallButton(
                              'W',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                            Expanded(
                                child: SmallButton(
                              'T',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                            Expanded(
                                child: SmallButton(
                              'F',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                            Expanded(
                                child: SmallButton(
                              'S',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                            Expanded(
                                child: SmallButton(
                              'S',
                              onPressed: () {
                                log('sadf');
                              },
                            )),
                          ],
                        )),
                    verticalSpacing20,
                    ItemWithHeader(
                        'Sound & Misc',
                        BasicButton(
                          'Configure',
                          onPressed: () =>
                              Navigator.of(context).pushNamed(SOUND),
                        ))
                  ])
                ]))
          ]))
        ]));
  }
}
