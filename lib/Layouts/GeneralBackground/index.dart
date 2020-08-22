import 'package:alarms_flutter/Components/Background/index.dart';

import 'package:flutter/widgets.dart';

class GeneralBackground extends StatelessWidget {
  const GeneralBackground({
    @required this.children,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
      child: Padding(
          padding: EdgeInsets.all(38),
          child: Stack(children: <Widget>[
            Background(),
            ...children,
          ])),
    ));
  }
}
