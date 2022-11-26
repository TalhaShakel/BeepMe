import 'package:beep_me/MyProfile/MyProfileScreen.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/ActiveBeep/ManageBeepScreen.dart';
import 'package:beep_me/screens/HomePayment/completeBeepScreen.dart';
import 'package:beep_me/screens/InviteFreind/invitefriendScreen.dart';
import 'package:beep_me/screens/View_/Viewbeepscreen.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/screens/prof_screen/edt_profile_screen.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Controllers/MianController.dart';
import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
    var controller = Get.put(MainController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.whiteColor,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  color: ColorConstants.primaryDarkColor,
                  child: ListTile(
                    leading: ImageUtils.buildImage(
                        ImageFiles.homeAvatarImage, 46, 46),
                    title: TextUtils.getText(StringConstants.strJohnDoe, 14,
                        AppConstants.robotoRegularFont, Colors.white),
                    subtitle: TextUtils.getText(StringConstants.strPersonalBal,
                        10, AppConstants.robotoRegularFont, Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundedButton.roundedButtonWithAction(
                    StringConstants.strBeepTitle, 162, 80, () {
                  Navigator.pushNamed(context, Routes.beepOfferScreen);
                }),
                const SizedBox(
                  height: 16,
                ),
                TextUtils.getText(StringConstants.strAdvWithUs, 14,
                    AppConstants.robotoRegularFont, Colors.black),
                const SizedBox(
                  height: 28,
                ),
                RoundedButton.roundedImageButton(ImageFiles.homeMsgWhiteIcn,
                    130, 65, 60, 60, ColorConstants.yellowColor, () {
                  // Navigator.pushNamed(context, Routes.edtProfileScreen);
                  Get.to(EditProfileScreen());
                  // Get.to(() => ViewBeep());
                }),
                const SizedBox(
                  height: 16,
                ),
                TextUtils.getText(StringConstants.strCompProf, 14,
                    AppConstants.robotoRegularFont, Colors.black),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          RoundedButton.roundedImageButton(
                              ImageFiles.homeGreenAvatar,
                              88,
                              44,
                              32,
                              32,
                              ColorConstants.greenColor, () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => MyProfileScreen())));
                          }, "40%"),
                          const SizedBox(
                            height: 8,
                          ),
                          TextUtils.getText(StringConstants.strMyProf, 16,
                              AppConstants.robotoRegularFont, Colors.black),
                        ],
                      ),
                      Column(
                        children: [
                          RoundedButton.roundedImageButton(
                              ImageFiles.homeWallet,
                              88,
                              44,
                              36,
                              36,
                              ColorConstants.greenPaleColor, () {
                            Get.to(CompleteBeep());
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          TextUtils.getText(StringConstants.strPayments, 16,
                              AppConstants.robotoRegularFont, Colors.black),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          RoundedButton.roundedImageButton(
                              ImageFiles.homeEnvelope,
                              88,
                              44,
                              32,
                              32,
                              ColorConstants.purpleColor, () {
                            Get.to(InviteFriend());
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          TextUtils.getText(StringConstants.strInviteFrnd, 16,
                              AppConstants.robotoRegularFont, Colors.black),
                        ],
                      ),
                      Column(
                        children: [
                          RoundedButton.roundedImageButton(
                              ImageFiles.homePurpleRing,
                              88,
                              44,
                              36,
                              36,
                              ColorConstants.purplePaleColor, () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ManageBeepScreen()));
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          TextUtils.getText(StringConstants.strActiveBeep, 16,
                              AppConstants.robotoRegularFont, Colors.black),
                        ],
                      )
                    ],
                  ),
                ),
                10.heightBox,
              ],
            ),
          )),
    );
  }
}
