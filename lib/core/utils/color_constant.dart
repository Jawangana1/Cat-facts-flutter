import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color white_A700_99 = fromHex('#99ffffff');

  static Color black_900 = fromHex('#000000');

  static Color bluegray_400 = fromHex('#888888');

  static Color deep_purple_A200 = fromHex('#8766f2');

  static Color white_A700 = fromHex('#ffffff');

  static Color deep_purple_A200_66 = fromHex('#668766f2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
