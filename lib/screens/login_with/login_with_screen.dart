import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/login_with/widgets/social_button.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';
import '../../ui_utils/image_files.dart';
import '../../ui_utils/image_utils.dart';

class LoginWithScreen extends StatefulWidget {
  const LoginWithScreen({Key? key}) : super(key: key);

  @override
  LoginWithScreenState createState() => LoginWithScreenState();
}

class LoginWithScreenState extends State<LoginWithScreen> {
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
      resizeToAvoidBottomInset: false,
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
        child: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtils.getText(StringConstants.strEarnBeing, 24,
                      AppConstants.robotoRegularFont, Colors.black),
                  const SizedBox(
                    width: 6,
                  ),
                  TextUtils.getText(
                      StringConstants.strSocial,
                      24,
                      AppConstants.robotoRegularFont,
                      ColorConstants.primaryDarkColor),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              ImageUtils.buildImage(ImageFiles.loginWithSocialImage, 300, 300),
              const SizedBox(
                height: 60,
              ),
              TextUtils.getText(StringConstants.strLoginWith, 20,
                  AppConstants.robotoRegularFont, Colors.black),
              const SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Divider(height: 2, color: ColorConstants.dividerColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButtonUtil.getFaceBookButton(() {
                    Navigator.pushNamed(context, Routes.facebookLoginScreen);
                  }),
                  const SizedBox(
                    width: 25,
                  ),
                  SocialButtonUtil.getGoogleButton(() {
                    Navigator.pushNamed(context, Routes.googleLoginScreen);
                  })
                ],
              ),
              // const Spacer(),
              SizedBox(
                height: 55,
              ),

              TextUtils.getText(
                  StringConstants.strAgreeWithTerms,
                  12,
                  AppConstants.robotoRegularFont,
                  ColorConstants.agreeWithTermsTextColor),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
