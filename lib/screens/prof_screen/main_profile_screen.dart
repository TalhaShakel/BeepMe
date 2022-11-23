import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/screens/search/widget/dropdown_item_widget.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({Key? key}) : super(key: key);

  @override
  MainProfileScreenState createState() => MainProfileScreenState();
}

class MainProfileScreenState extends State<MainProfileScreen> {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              height: 130,
              color: ColorConstants.primaryDarkColor,
              child: ListTile(
                leading: Container(
                  width: 86,
                  child: Row(
                    children: [
                      ImageUtils.buildImage(
                          ImageFiles.edtProfBackArrow, 24, 24),
                      const SizedBox(
                        width: 16,
                      ),
                      ImageUtils.buildImage(
                          ImageFiles.mainProfAvatarIcn, 46, 46),
                    ],
                  ),
                ),
                title: TextUtils.getText(StringConstants.strJohnDoe, 14,
                    AppConstants.robotoRegularFont, Colors.white),
                subtitle: TextUtils.getText(StringConstants.strPersonalBal, 10,
                    AppConstants.robotoRegularFont, Colors.white),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    getRoundCorneredCircle(),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        getSocialBox(
                          context,
                          ImageFiles.mainProfTikTokIcn,
                          StringConstants.strAtJohnDoe,
                          "4M",
                          "4M",
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        getSocialBox(context, ImageFiles.mainProfInstagramIcn,
                            StringConstants.strAtJohnDoe, "4M", "4M"),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        getSocialBox(
                          context,
                          ImageFiles.mainProfFbIcn,
                          StringConstants.strAtJohnDoe,
                          "4M",
                          "4M",
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        getSocialBox(context, ImageFiles.mainProfWhtsappIcn,
                            StringConstants.strAtJohnDoe, "4M", "4M"),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    getContentTile(ImageFiles.mainProfHandIcn,
                        StringConstants.strPoints, "500"),
                    getContentTile(ImageFiles.mainProfLocationPinIcn, "From",
                        "United Kingdom"),
                    getContentTile(
                        ImageFiles.mainProfGenderIcn, "Gender", "Male"),
                    getContentTile(ImageFiles.mainProfAgeIcn, "Age", "20"),
                    getContentTile(
                        ImageFiles.mainProfWorldIcn, "Language", "English"),
                    getContentTile(ImageFiles.mainProfBoxIcn, "Recent Delivery",
                        "About Two Days"),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                           Navigator.pushNamed(context, Routes.paymentMethodSelectionScreen);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: ColorConstants.primaryDarkColor,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: TextUtils.getText(StringConstants.strBEEP, 16,
                            AppConstants.robotoBoldFont, Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getContentTile(String icn, String title, String subTitle) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top: 8),
          child: ImageUtils.buildImage(icn, 28, 28),
        ),
        title: TextUtils.getText(title, 12, AppConstants.poppinsRegularFont,
            ColorConstants.txtListTileGrayTextColor),
        subtitle: TextUtils.getText(
            subTitle, 14, AppConstants.poppinsRegularFont, Colors.black),
      ),
    );
  }

  Widget getTileContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 78,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primaryDarkColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Stack(
        children: [
          ImageUtils.buildImage(ImageFiles.srchProfOvalIcon, 136, 78),
          Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
              leading:
                  ImageUtils.buildImage(ImageFiles.srchProfAvatarImg, 40, 40),
              title: TextUtils.getText(
                  StringConstants.strJohnDoe, 14, AppConstants.robotoBoldFont),
              subtitle: TextUtils.getText(StringConstants.strProLevel, 10,
                  AppConstants.robotoRegularFont),
              trailing: Container(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextUtils.getText(
                        StringConstants.strRating,
                        14,
                        AppConstants.poppinsRegularFont,
                        ColorConstants.ratingYellowColor),
                    SizedBox(
                      width: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.star_rate_rounded,
                        color: ColorConstants.ratingYellowColor,
                      ),
                    ),
                    SizedBox(width: 4),
                    TextUtils.getText(
                        StringConstants.strRatingCount,
                        13,
                        AppConstants.poppinsRegularFont,
                        ColorConstants.grayRatingCountColor),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getRoundCorneredCircle() {
    return Container(
      alignment: Alignment.center,
      width: 182,
      height: 46,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primaryDarkColor,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(14),
            bottomRight: Radius.circular(14),
          )),
      child: TextUtils.getText(
        StringConstants.strTotApproved,
        13,
        AppConstants.poppinsRegularFont,
        ColorConstants.primaryDarkColor,
      ),
    );
  }

  Widget getSocialBox(BuildContext context, String icon, String mainTitle,
      String title, String subTitle) {
    return Expanded(
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: ColorConstants.yellowButtonBg,
            border: Border.all(
              color: ColorConstants.yellowButtonBg,
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            )),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12, left: 16),
              child: ImageUtils.buildImage(icon, 20, 20),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, left: 42),
                child: TextUtils.getText(
                    mainTitle, 14, AppConstants.poppinsRegularFont)),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: ColorConstants.primaryDarkColor,
                    radius: 13,
                    child: Center(
                      child: ImageUtils.buildImage(
                          ImageFiles.mainProfArrowIcn, 13, 13),
                    ),
                  ),
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 12, left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 108,
                        child: Row(
                          children: [
                            TextUtils.getText(StringConstants.strFollowers, 10,
                                AppConstants.robotoRegularFont),
                            SizedBox(
                              width: 10,
                            ),
                            TextUtils.getText(
                                title,
                                10,
                                AppConstants.robotoRegularFont,
                                ColorConstants.txtGrayColorSocialBx)
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          children: [
                            TextUtils.getText(StringConstants.strLikes, 10,
                                AppConstants.robotoRegularFont),
                            SizedBox(
                              width: 10,
                            ),
                            TextUtils.getText(
                                subTitle,
                                10,
                                AppConstants.robotoRegularFont,
                                ColorConstants.txtGrayColorSocialBx)
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
