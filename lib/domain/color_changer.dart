import 'dart:math';

import 'package:flutter/material.dart';

///Generate random color from RGB
class ColorChanger{
  static Color randomColor() {
    return Color.fromRGBO(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(101).toDouble()/100, //Забув що можна ділити все це.
    );
  }
}

