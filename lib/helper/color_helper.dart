import 'package:flutter/material.dart';

class ColorHelper {
  static Color bg = const Color(0xff242C3B);
  static Color primaryColor = const Color(0xff37B6E9);
  static Color secondColor = const Color(0xff4B4CED);
  static Color gray = const Color(0xff353F54);
  static Color darkBlack = const Color(0xff222834);

  static Color blur = const Color(0xff8da0cb).withOpacity(0.3);

  static Color white = Colors.white;
  static Color white30 = Colors.white.withOpacity(0.3);

  static Gradient gradient = const LinearGradient(
      colors: [
        Color(0xff744ff9),
        Color(0xff8369de),
        Color(0xff8da0cb),
      ]);
}
