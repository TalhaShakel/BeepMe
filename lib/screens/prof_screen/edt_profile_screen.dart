import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  EditProfileScreenState createState() => EditProfileScreenState();
}

class EditProfileScreenState extends State<EditProfileScreen> {
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
          title: TextUtils.getText(StringConstants.strEditProfile, 18,
              AppConstants.robotoRegularFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Stack(
                    children: [
                      ImageUtils.buildImage(
                          ImageFiles.edtProfProfileAvatar, 120, 120),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 4, right: 4),
                            child: ImageUtils.buildImage(
                                ImageFiles.edtProfCamera, 30, 30),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                InputUtil.getInput(StringConstants.strFullName),
                SizedBox(
                  height: 10,
                ),
                InputUtil.getInput(StringConstants.strEmail),
                SizedBox(
                  height: 10,
                ),
                InputUtil.getInput(StringConstants.strLanguage),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: InputUtil.getInput(StringConstants.strAge, 0),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child:
                            InputUtil.getInput(StringConstants.strLocation, 0),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child:
                            InputUtil.getInput(StringConstants.strInterest, 0),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: InputUtil.getInput(StringConstants.strGender, 0),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ImageUtils.buildImage(
                                ImageFiles.edtProfUncheckedRing, 24, 24),
                            const SizedBox(
                              width: 12,
                            ),
                            TextUtils.getText(StringConstants.strSchool, 14,
                                AppConstants.robotoRegularFont, Colors.black)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ImageUtils.buildImage(
                                ImageFiles.edtProfCheckedRing, 31, 31),
                            const SizedBox(
                              width: 8,
                            ),
                            TextUtils.getText(StringConstants.strCollege, 14,
                                AppConstants.robotoRegularFont, Colors.black),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ImageUtils.buildImage(
                                ImageFiles.edtProfUncheckedRing, 24, 24),
                            const SizedBox(
                              width: 8,
                            ),
                            TextUtils.getText(StringConstants.strUniversity, 14,
                                AppConstants.robotoRegularFont, Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageUtils.buildImage(ImageFiles.edtProfTikTok, 50, 50),
                      ImageUtils.buildImage(ImageFiles.edtProfWhatsapp, 50, 50),
                      Container(
                        height: 50,
                        width: 50,
                        child: Stack(
                          children: [
                            ImageUtils.buildImage(
                                ImageFiles.edtProfBlueCircle, 50, 50),
                            Align(
                              alignment: Alignment.center,
                              child: ImageUtils.buildImage(
                                  ImageFiles.loginWithFacebook, 32, 32),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Stack(
                          children: [
                            ImageUtils.buildImage(
                                ImageFiles.edtProfRedCircle, 50, 50),
                            Align(
                              alignment: Alignment.center,
                              child: ImageUtils.buildImage(
                                  ImageFiles.edtProfInstagram, 30, 30),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.addSocialMediaScreen);
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
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: ColorConstants.whiteColor,
                      onPrimary: ColorConstants.primaryDarkColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                              color: ColorConstants.primaryDarkColor)),
                    ),
                    child: TextUtils.getText(
                        StringConstants.strSave,
                        16,
                        AppConstants.robotoBoldFont,
                        ColorConstants.primaryDarkColor),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ));
  }
}
