import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/HomePayment/withdrawScreen.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../ui_utils/text_utils.dart';

class CompleteBeep extends StatelessWidget {
  const CompleteBeep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        elevation: 0,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: ColorConstants.primaryDarkColor,
                child: ListTile(
                  leading:
                      ImageUtils.buildImage(ImageFiles.homeAvatarImage, 46, 46),
                  title: TextUtils.getText(StringConstants.strJohnDoe, 14,
                      AppConstants.robotoRegularFont, Colors.white),
                  subtitle: TextUtils.getText(StringConstants.strPersonalBal,
                      10, AppConstants.robotoRegularFont, Colors.white),
                ),
              ),
              /////////////////////////////
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      BeepComplete(),
                      BeepComplete(),
                      BeepComplete(),
                      BeepComplete(),
                      BeepComplete(),
                      BeepComplete(),
                    ],
                  )
                ],
              ),
              // Spacer(),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 48,
                  width: 388,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(WithDrawScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.primaryDarkColor,
                        side: BorderSide(
                            width: 1,
                            color: ColorConstants
                                .primaryDarkColor), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: "WITHDRAW".text.white.size(16).make()),
                ),
              )
            ]),
          )),
    );
  }

  Padding BeepComplete() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Container(
        height: 94.h,
        width: 388.w,
        decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.primaryDarkColor),
            borderRadius: BorderRadius.circular(12.r)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Stack(
            children: [
              Image.asset(
                ImageFiles.srchProfOvalIcon,

                // height: 500,
                // width: 200,
              ),
              ListTile(
                title: "\$50".text.make(),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    8.heightBox,
                    "Shoes advertisement".text.size(8).black.make(),
                    8.heightBox,
                    "02/12/2022".text.size(8).black.make(),
                  ],
                ),
                leading: Image.asset(
                  "assets/Rectangle 127.png",
                ),
                // trailing:
              ),
              Positioned(
                right: 10,
                top: 6,
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Color(0xFFFFF7E9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "COMPLETED",
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
