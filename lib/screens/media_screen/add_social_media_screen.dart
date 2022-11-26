import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class AddSocialMediaScreen extends StatefulWidget {
  const AddSocialMediaScreen({Key? key}) : super(key: key);

  @override
  AddSocialMediaScreenState createState() => AddSocialMediaScreenState();
}

class AddSocialMediaScreenState extends State<AddSocialMediaScreen> {
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
                  height: 70,
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
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                      // Navigator.pushNamed(context, Routes.addSocialMediaScreen);
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
                50.heightBox,
              ],
            ),
          ),
        ));
  }
}
