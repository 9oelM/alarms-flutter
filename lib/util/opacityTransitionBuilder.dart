import 'package:flutter/widgets.dart';

Widget opacityTransitionBuilder(BuildContext context,
    Animation<double> animation, Animation<double> second, Widget child) {
  return new FadeTransition(
    opacity: animation,
    child: new FadeTransition(
      opacity: new Tween<double>(begin: 1.0, end: 0.0).animate(second),
      child: child,
    ),
  );
}
