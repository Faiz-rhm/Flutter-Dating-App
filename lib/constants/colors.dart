import 'package:flutter/material.dart';

class ColorConstants {
  static Color primaryColor = hexToColor('#4E4B6F');
  static Color secondary = hexToColor('#16123D');

  static Color close = hexToColor('#A29FBE');
  static Color star = hexToColor('#4DD5FF');
  static Color favorite = hexToColor('#FF636B');
  static Color active = hexToColor('#15D374');

  static Color lightOrange = hexToColor('#FFE9E6');
  static Color brightOrange = hexToColor('#FF6F59');

  static Color lightBlue = hexToColor('#E5F7FF');
  static Color brightBlue = hexToColor('#33C0FF');

  static Color lightOrange1 = hexToColor('#FFF2E5');
  static Color brightOrange1 = hexToColor('#FF9933');

  static Color lightPurple = hexToColor('#E5ECFF');
  static Color brightPurple = hexToColor('#5985FF');

  static Color lightPurple1 = hexToColor('#F2E5FF');
  static Color brightPurple1 = hexToColor('#9933FF');

  static Color lightGreen = hexToColor('#E0FFFF');
  static Color brightGreen = hexToColor('#12B2B2');

  static Color lightPink = hexToColor('#FFE5EE');
  static Color brightPink = hexToColor('#FF3377');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
