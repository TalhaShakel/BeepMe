import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/button_utils.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.whiteColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            ColorConstants.orangeShadeColor,
          ],
        )),
        child: IntroductionScreen(
            globalBackgroundColor: Colors.transparent,
            onDone: () {
              // When done button is press
            },
            showBackButton: false,
            showSkipButton: false,
            showDoneButton: false,
            showNextButton: false,
            pages: [
              PageViewModel(
                  title: "",
                  bodyWidget: Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          ImageUtils.buildImage(
                              ImageFiles.onBoardingImage1, 271, 307),
                          const SizedBox(
                            height: 60,
                          ),
                          TextUtils.getText(
                            StringConstants.earnMoneyOnBoarding,
                            20,
                            AppConstants.robotoBoldFont,
                          )
                        ],
                      ))),
              PageViewModel(
                  title: "",
                  bodyWidget: Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          ImageUtils.buildImage(
                              ImageFiles.onBoardingImage2, 271, 307),
                          const SizedBox(
                            height: 60,
                          ),
                          TextUtils.getText(StringConstants.advertiseOnBoarding,
                              20, AppConstants.robotoBoldFont, Colors.black, TextAlign.center)
                        ],
                      ))),
              PageViewModel(
                  title: "",
                  bodyWidget: Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          ImageUtils.buildImage(
                              ImageFiles.onBoardingImage3, 271, 307),
                          const SizedBox(
                            height: 60,
                          ),
                          TextUtils.getText(
                              StringConstants.clickAdOnBoarding,
                              20,
                              AppConstants.robotoBoldFont,
                              Colors.black,
                              TextAlign.center),

                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child:  ButtonUtils.getRoundedCornerElevatedButton(
                                StringConstants.getStartedOnBoarding, () {
                              Navigator.pushNamed(context, Routes.loginWithScreen);
                            }),
                          ),
                        ],
                      ))),
            ]),
      ),
    );
  }
}
