import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/string_constants.dart';

class InputUtil{

  static Widget getInput(String hint, [double padding = 20]){
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: padding),
      child: TextField(
        style: const TextStyle(fontFamily: AppConstants.robotoRegularFont, fontSize: 14),
        decoration: InputDecoration(
            filled: true,
            hintText: hint,
            fillColor: ColorConstants.loginTextFieldColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            hintStyle: const TextStyle(fontSize: 12, fontFamily: AppConstants.robotoRegularFont,)

        ),
      ),
    );
  }



  static Widget getInputWithRedCorner(String hint, [Icon _icon = const Icon(Icons.search, color: Colors.grey,)]){
    return  TextField(
      style: const TextStyle(fontFamily: AppConstants.robotoRegularFont, fontSize: 14),
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: _icon,
          ),
          filled: true,
          hintText: hint,
          fillColor: ColorConstants.whiteColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ColorConstants.primaryDarkColor, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ColorConstants.primaryDarkColor, width: 1),
          ),
          hintStyle: const TextStyle(fontSize: 14, fontFamily: AppConstants.robotoRegularFont,),
          contentPadding: const EdgeInsets.only(top: 8, left: 8, right: 8)

      ),
    );
  }
}