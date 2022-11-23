import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const _splashScreenDelay = 3;


  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: _splashScreenDelay), () {
      Navigator.pushNamed(context, Routes.onBoardingScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.primaryDarkColor,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: TextUtils.getText(
                      StringConstants.splashScreenTitle, 48, AppConstants.brunoAceRegularFont, Colors.white)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextUtils.getText(
                          StringConstants.splashScreenVersion, 12, AppConstants.poppinsRegularFont, Colors.white)))
            ],
          )),
    );
  }
}
