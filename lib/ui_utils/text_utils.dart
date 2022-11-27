import 'package:flutter/material.dart';

class TextUtils {
  static getText(String text,
      [double fontSize = 0.0,
      String fontFamily = "Poppins Regular",
      Color color = Colors.black,
      TextAlign align = TextAlign.left,
      var FontWeight = FontWeight.normal]) {
    return Text(text,
        textAlign: align,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight,
        ));
  }
}
