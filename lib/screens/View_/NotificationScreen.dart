import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ViewOfferDetailsScreen extends StatelessWidget {
  const ViewOfferDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        title: "Notification".text.make(),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 440,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: ColorConstants.primaryDarkColor,
                  width: 1,
                )),
            child: Column(children: [
              ListTile(
                  leading:
                      ImageUtils.buildImage(ImageFiles.homeAvatarImage, 46, 46),
                  title: TextUtils.getText(
                    StringConstants.strJohnDoe,
                    16,
                    AppConstants.robotoRegularFont,
                    Colors.black,
                  ),
                  subtitle: "April 18,2022, 02:12PM"
                      .text
                      .color(Vx.hexToColor("#858585"))
                      .size(8)
                      .make(),
                  trailing: Image(
                    image: AssetImage(ImageFiles.edtProfTikTok),
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    "Duration"
                        .text
                        .size(16)
                        .color(ColorConstants.agreeWithTermsTextColor)
                        .make(),
                    85.widthBox,
                    "\t4 Days".text.size(16).fontWeight(FontWeight.w400).make(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    "Earnings per Beep"
                        .text
                        .size(16)
                        .color(ColorConstants.agreeWithTermsTextColor)
                        .make(),
                    25.widthBox,
                    "100".text.fontWeight(FontWeight.w400).size(16).make(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    "Total you will earn"
                        .text
                        .size(16)
                        .color(ColorConstants.agreeWithTermsTextColor)
                        .make(),
                    25.widthBox,
                    "\$456".text.fontWeight(FontWeight.w400).size(16).make(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 165, top: 10),
                width: 124,
                height: 29,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: ColorConstants.primaryDarkColor,
                      width: 1,
                    )),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.attach_file,
                        size: 20,
                        color: ColorConstants.primaryDarkColor,
                      ),
                      "Photo".text.size(14).color(Color(0xff858585)).make(),
                      "5M".text.make(),
                    ]),
                // child: TextFormField(
                //   decoration: InputDecoration(
                //       border: InputBorder.none,
                //       hintText: "Photo",
                //       hintStyle: TextStyle(
                //         color: ColorConstants.agreeWithTermsTextColor,
                //       ),
                //       suffixIcon: "5M".text.color(Color(0xff858585)).make(),
                //       prefixIcon: IconButton(
                //         icon: Icon(
                //           Icons.attach_file,
                //           color: ColorConstants.primaryDarkColor,
                //         ),
                //         onPressed: () {},
                //       )),
                // ),
              ),
              75.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 48,
                    width: 144,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: "ACCEPT"
                          .text
                          .white
                          .fontWeight(FontWeight.w700)
                          .make(),
                      style: ElevatedButton.styleFrom(
                        primary: ColorConstants.primaryDarkColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: 144,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.bottomSheet(bottomNavbarDrawer());
                      },
                      child: "REJECT"
                          .text
                          .color(ColorConstants.primaryDarkColor)
                          .fontWeight(FontWeight.w700)
                          .make(),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          width: 1,
                          color: ColorConstants.primaryDarkColor,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              )
              //////////////////////////////////
            ]),
          ),
        ),
      ),
    );
  }
}

class bottomNavbarDrawer extends StatelessWidget {
  const bottomNavbarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 248,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(children: [
          SizedBox(
            width: 388,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Offending Content"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 48,
            width: 388,
            child: ElevatedButton(
              onPressed: () {},
              child: "Not Intrested".text.bold.red500.make(),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(width: 1, color: Colors.red),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 19,
            width: 129,
            child: ElevatedButton(
              onPressed: () {},
              child: "Don't Have Time".text.bold.red500.size(16).make(),
              style:
                  ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
            ),
          ),
          Center(
              child: Container(
            height: 1,
            width: 93,
            color: ColorConstants.primaryDarkColor,
          )),
        ]),
      ),
    );
  }
}
