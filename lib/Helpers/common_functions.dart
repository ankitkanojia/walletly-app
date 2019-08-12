import 'package:flutter/material.dart';



class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Shader linearGradientPrimaryText(color1, color2) =>
    LinearGradient(
      colors: <Color>[HexColor(color1), HexColor(color2)],
    ).createShader(Rect.fromLTWH(0, 0.0, 140.0, 50.0));


class Validation {
  static String email(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter valid email';
    else
      return null;
  }

  static String minValue(String arg, int length) {
    if (arg.length < length)
      return 'Please enter minimum $length characters';
    else
      return null;
  }

  static String compare(String compareFrom, String compareTo) {
    if (compareFrom != compareTo)
      return 'Please enter same value';
    else
      return null;
  }
}



