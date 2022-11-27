import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/route_names.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/facebook_login/widgets/input_util.dart';

class MyProfileSocialMedia extends StatefulWidget {
  const MyProfileSocialMedia({super.key});

  @override
  State<MyProfileSocialMedia> createState() => _MyProfileSocialMediaState();
}

class _MyProfileSocialMediaState extends State<MyProfileSocialMedia> {
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
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryDarkColor,
          centerTitle: true,
          // leading: ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
          title: TextUtils.getText(StringConstants.strAddSocialMedia, 18,
              AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                TextUtils.getText(StringConstants.splashScreenTitle, 28,
                    AppConstants.brunoAceRegularFont),
                SizedBox(
                  height: 70,
                ),
                InputUtil.getInput(StringConstants.strTikTokLink),
                SizedBox(
                  height: 10,
                ),
                InputUtil.getInput(StringConstants.strWtsapplink),
                SizedBox(
                  height: 10,
                ),
                InputUtil.getInput(StringConstants.strFbLink),
                SizedBox(
                  height: 10,
                ),
                InputUtil.getInput(StringConstants.strInstLink),
                SizedBox(
                  height: Get.height / 100 + 90,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: ColorConstants.primaryDarkColor,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: TextUtils.getText(StringConstants.strAllSocialMedia,
                        16, AppConstants.robotoBoldFont, Colors.white),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ));
  }
}
