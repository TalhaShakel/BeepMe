import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/route_names.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

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
                trailing: "Log Out".text.white.bold.make(),
                leading:
                    ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
                title: TextUtils.getText(StringConstants.strJohnDoe, 14,
                    AppConstants.robotoRegularFont, Colors.white),
                subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils.getText(StringConstants.strPersonalBal, 10,
                          AppConstants.robotoRegularFont, Colors.white),
                      Row(
                        children: [
                          "4.9".text.white.make(),
                          Icon(
                            Icons.star,
                            color: Vx.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            getRoundCorneredCircle(),
            //  Container(),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
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
                    ///////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 140,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("EDIT PROFILE"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                "REVIEWS",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 3, bottom: 3),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                                child: IconButton(
                                    // padding: EdgeInsets.only(left: 40),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                    /////////////////////////////////////////
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
      width: Get.width,
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
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(color: ColorConstants.primaryDarkColor),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: ImageUtils.buildImage(ImageFiles.srchProfAvatarImg, 40, 40),
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
