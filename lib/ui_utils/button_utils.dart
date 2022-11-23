import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class ButtonUtils{

  static getRoundedCornerElevatedButton(String text, Function() callback){
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        primary: ColorConstants.primaryDarkColor,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: TextUtils.getText(
            text, 18, "Roboto Bold", ColorConstants.whiteColor
        ),
      ),
    );
  }
}