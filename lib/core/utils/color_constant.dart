import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color indigo9003f = fromHex('#3f1e426d');

  static Color black9009e = fromHex('#9e000000');

  static Color black9007c = fromHex('#7c000000');

  static Color gray80026 = fromHex('#264b4b4b');

  static Color black9003f = fromHex('#3f000000');

  static Color black900B7 = fromHex('#b7000000');

  static Color gray50 = fromHex('#fdf9f9');

  static Color teal100 = fromHex('#9be3da');

  static Color black90087 = fromHex('#87000000');

  static Color black90001 = fromHex('#020202');

  static Color greenA700 = fromHex('#00b412');

  static Color black900 = fromHex('#000000');

  static Color black90082 = fromHex('#82000000');

  static Color blueGray900A5 = fromHex('#a52e2e41');

  static Color teal900 = fromHex('#0d464d');

  static Color redA400 = fromHex('#ff2626');

  static Color gray20001 = fromHex('#eaeaea');

  static Color black9009b = fromHex('#9b000000');

  static Color redA700 = fromHex('#ff0707');

  static Color black900Bf = fromHex('#bf000000');

  static Color gray600 = fromHex('#808080');

  static Color black900C1 = fromHex('#c1000000');

  static Color gray400 = fromHex('#cacaca');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray500 = fromHex('#adadad');

  static Color gray800 = fromHex('#423d3d');

  static Color blueGray600 = fromHex('#348379');

  static Color gray200 = fromHex('#eeeeee');

  static Color black900C6 = fromHex('#c6000000');

  static Color gray80099 = fromHex('#993c3c43');

  static Color black900A3 = fromHex('#a3000000');

  static Color gray300 = fromHex('#dddfdf');

  static Color gray50Ed = fromHex('#edfafafa');

  static Color gray100 = fromHex('#f6f5f5');

  static Color cyan200 = fromHex('#8fe1d7');

  static Color black90077 = fromHex('#77000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA70001 = fromHex('#fffcfc');

  static Color whiteA70002 = fromHex('#fdfdfd');

  static Color black900Ad = fromHex('#ad000000');

  static Color teal90001 = fromHex('#0e464e');

  static Color black900Ce = fromHex('#ce000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black900Af = fromHex('#af000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
