library colors;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum ColorLevels { ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN }

Color getblackColor(ColorLevels level) {
  switch (level) {
    case ColorLevels.ONE:
      return Colors.black;
    case ColorLevels.TWO:
      return Colors.black87;
    case ColorLevels.THREE:
      return Colors.black54;
    case ColorLevels.FOUR:
      return Colors.black45;
    case ColorLevels.FIVE:
      return Colors.black38;
    case ColorLevels.SIX:
      return Colors.black26;
    case ColorLevels.SEVEN:
      return Colors.black12;
    default:
      throw Error();
  }
}

Color getWhiteColor(ColorLevels level) {
  switch (level) {
    case ColorLevels.ONE:
      return Colors.white;
    case ColorLevels.TWO:
      return Colors.white70;
    case ColorLevels.THREE:
      return Colors.white60;
    case ColorLevels.FOUR:
      return Colors.white54;
    case ColorLevels.FIVE:
      return Colors.white38;
    case ColorLevels.SIX:
      return Colors.white30;
    case ColorLevels.SEVEN:
      return Colors.white24;
    default:
      throw Error();
  }
}

Color getColorAtLevel(bool isBlack, ColorLevels level) {
  return isBlack ? getblackColor(level) : getWhiteColor(level);
}
