import 'dart:developer';

import 'package:alarms_flutter/Components/Multi/ItemWithHeader/index.dart';
import 'package:alarms_flutter/Components/Single/BasicButton/index.dart';
import 'package:alarms_flutter/Components/Single/BasicText/index.dart';
import 'package:alarms_flutter/Components/Single/Spacing/index.dart';
import 'package:alarms_flutter/Layouts/GeneralBackground/index.dart';
import 'package:alarms_flutter/constants/routes.dart';
import 'package:alarms_flutter/constants/sounds.dart';
import 'package:flutter/widgets.dart';

class Sound extends StatelessWidget {
  const Sound() : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.primaryDelta > 0) Navigator.of(context).pushNamed(HOME);
        },
        child: GeneralBackground(children: <Widget>[
          Container(
              child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: BasicText('Sound & Misc')),
              verticalSpacing30,
              ...SOUNDS
                  .asMap()
                  .entries
                  .map((soundItemEntry) => Column(children: [
                        BasicButton(
                          soundItemEntry.value,
                          onPressed: () {
                            log(soundItemEntry.value);
                          },
                        ),
                        soundItemEntry.key != SOUNDS.length - 1
                            ? verticalSpacing5
                            : SizedBox.shrink(),
                      ])),
              verticalSpacing20,
            ],
          ))
        ]));
  }
}
