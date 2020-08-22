import 'package:alarms_flutter/Components/Single/BasicText/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SwitchWithHeader extends StatelessWidget {
  const SwitchWithHeader(this.data,
      {@required this.value, @required this.onChanged})
      : super();
  final String data;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      BasicText(data),
      Material(
          color: Colors.black,
          child: Switch(
            onChanged: onChanged,
            value: value,
            activeColor: Colors.blue,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.red,
          )),
    ]);
  }
}
