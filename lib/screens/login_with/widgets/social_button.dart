import 'package:flutter/material.dart';

import '../../../ui_utils/image_files.dart';
import '../../../ui_utils/image_utils.dart';

class SocialButtonUtil{

  static Widget getFaceBookButton(Function() callback){
    return  InkWell(
      onTap: callback,
      child: Container(
        height: 44, width: 141,
        child: Stack(
          children: [
            ImageUtils.buildImage(
                ImageFiles.loginWithBlueOval, 141, 44),
            Align(
              alignment: Alignment.center,
              child: ImageUtils.buildImage(
                  ImageFiles.loginWithFacebook, 34, 34),
            )
          ],
        ),
      ),
    );
  }


  static Widget getGoogleButton(Function() callback){
    return  InkWell(
      onTap: callback,
      child: Container(
        height: 44, width: 141,
        child: Stack(
          children: [
            ImageUtils.buildImage(
                ImageFiles.loginWithGreenOval, 141, 44),
            Align(
              alignment: Alignment.center,
              child: ImageUtils.buildImage(
                  ImageFiles.loginWithGoogle, 27, 27),
            )
          ],
        ),
      ),
    );
  }




}