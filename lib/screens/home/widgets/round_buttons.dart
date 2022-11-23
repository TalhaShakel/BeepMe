import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../../ui_utils/text_utils.dart';

class RoundedButton{

  static Widget roundedButton(String text, double containerHeight, double radius){
    return Container(
      alignment: Alignment.topCenter,
      width: containerHeight, height: containerHeight,
      child: Stack(
        children: [
          CircleAvatar(
            radius: radius,
            backgroundColor: ColorConstants.primaryDarkColor,
          ),
          Align(
            alignment: Alignment.center,
            child: TextUtils.getText(
                text, 36, AppConstants.robotoRegularFont, Colors.white),
          )
        ],
      ),
    );
  }

  static Widget roundedButtonWithAction(String text, double containerHeight, double radius, Function() callback){
    return InkWell(
      onTap: callback,
      child: Container(
        alignment: Alignment.topCenter,
        width: containerHeight, height: containerHeight,
        child: Stack(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: ColorConstants.primaryDarkColor,
            ),
            Align(
              alignment: Alignment.center,
              child: TextUtils.getText(
                  text, 36, AppConstants.robotoRegularFont, Colors.white),
            )
          ],
        ),
      ),
    );
  }






  static Widget roundedImageButton(String image, double containerHeight,
      double radius, double imgHeight, double imgWidth, Color bgColor, Function() callback, [String text = ""]){
    return InkWell(
      onTap: callback,
      child: Container(

        alignment: Alignment.topCenter,
        width: containerHeight, height: containerHeight,
        child: Stack(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: bgColor,
            ),

            Align(
                alignment: Alignment.center,
                child: text == ""
                    ? ImageUtils.buildImage(image, imgWidth, imgHeight)
                    : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageUtils.buildImage(image, imgWidth, imgHeight),
                    SizedBox(height: 6,),
                    TextUtils.getText(
                        "40%", 10, AppConstants.brunoAceRegularFont, ColorConstants.darkGreenColor),
                  ],
                )
            )


          ],
        ),
      ),
    );
  }


}