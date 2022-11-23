import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/login_with/widgets/social_button.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';
import '../../ui_utils/image_files.dart';
import '../../ui_utils/image_utils.dart';

class GoogleLoginScreen extends StatefulWidget {
  const GoogleLoginScreen({Key? key}) : super(key: key);

  @override
  GoogleLoginScreenState createState() => GoogleLoginScreenState();
}

class GoogleLoginScreenState extends State<GoogleLoginScreen> {
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
      appBar: AppBar(
        title: TextUtils.getText(StringConstants.splashScreenTitle, 22,
            AppConstants.brunoAceRegularFont, Colors.white),
        centerTitle: true,
        backgroundColor: ColorConstants.primaryDarkColor,
        leading: const SizedBox(),
      ),
      resizeToAvoidBottomInset: true,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageUtils.buildImage(
                      ImageFiles.facebookLoginImage1, 137 / 2, 148),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 52),
                    child: ImageUtils.buildImage(
                        ImageFiles.facebookLoginImage2, 70, 97),
                  )
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ImageUtils.buildImage(
                          ImageFiles.facebookLoginImage4, 80, 80),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: ImageUtils.buildImage(
                          ImageFiles.facebookLoginImage3, 60, 83),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ImageUtils.buildImage(
                          ImageFiles.googleLoginImage, 144, 85),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextUtils.getText(StringConstants.strLoginWithFacebook, 22,
                  AppConstants.robotoRegularFont, Colors.black),
              const SizedBox(
                height: 40,
              ),
              InputUtil.getInput(StringConstants.strPhnOrEmail),
              const SizedBox(
                height: 12,
              ),
              InputUtil.getInput(StringConstants.strPassword),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.homeScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstants.primaryDarkColor,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: TextUtils.getText(StringConstants.strLogin, 18,
                      AppConstants.robotoBoldFont, Colors.white),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextUtils.getText(
                  StringConstants.strAgreeWithTerms,
                  12,
                  AppConstants.robotoRegularFont,
                  ColorConstants.agreeWithTermsTextColor),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
