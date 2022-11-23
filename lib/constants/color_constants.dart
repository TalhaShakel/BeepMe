import 'dart:ui';

class ColorConstants{

  static Color primaryDarkColor = hexToColor("#FF4906"); //background: #1A8411;
  static Color whiteColor = hexToColor("#FFFFFF");
  static Color orangeShadeColor = hexToColor("#ffe6dd");

  static Color agreeWithTermsTextColor = hexToColor("#858585");

  static Color dividerColor = hexToColor("#E7E7E7");
  static Color loginTextFieldColor = hexToColor("#F2F5F6");
  static Color yellowColor = hexToColor("#FFA500");
  static Color greenColor = hexToColor("#DEFFDB");
  static Color greenPaleColor = hexToColor("#D7FFFE");
  static Color purpleColor = hexToColor("#E8E8FF");
  static Color purplePaleColor = hexToColor("#FFE4F6");
  static Color darkGreenColor = hexToColor("#1A8411");

  static Color borderGrayColor = hexToColor("#D9D9D9");
  static Color txtGrayColor = hexToColor("#C9C9C9");

  static Color ratingYellowColor = hexToColor("#FFC107");
  static Color grayRatingCountColor = hexToColor("#8E8B8B");
  static Color yellowButtonBg = hexToColor("#FFF7E9");
  static Color txtGrayColorSocialBx = hexToColor("#C4C4C4");
  static Color txtListTileGrayTextColor = hexToColor("#858585");

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}