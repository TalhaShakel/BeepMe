import 'package:beep_me/Controllers/MianController.dart';
import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/ActiveBeep/ProofofWorkScreen.dart';
import 'package:beep_me/screens/View_/NotificationScreen.dart';
import 'package:beep_me/screens/View_/ViweProve.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ManageBeepScreen extends StatelessWidget {
  const ManageBeepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        centerTitle: true,
        leading: ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
        title: TextUtils.getText(
            "Manage Beeps", 18, AppConstants.robotoRegularFont, Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GetBuilder<MainController>(builder: (controller) {
          return Column(
            children: [
              Container(
                height: 48.h,
                width: 388.w,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.primaryDarkColor),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.isActiveBeeps(true);
                      },
                      child: Container(
                        // height: 48.h,
                        // width: 194.w,

                        height: 48.h,
                        width: Get.width / 2 - 21,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r),
                          color: controller.isActive_Beeps
                              ? ColorConstants.primaryDarkColor
                              : Vx.white,
                        ),
                        child: Center(
                          child: "completed campaigns"
                              .text
                              .color(controller.isActive_Beeps
                                  ? Vx.white
                                  : ColorConstants.primaryDarkColor)
                              .size(14.sp)
                              .make(),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.isActiveBeeps(false);
                      },
                      child: Container(
                        // height: 48.h,
                        // width: 194.w,
                        height: 48.h,
                        width: Get.width / 2 - 21,
                        decoration: BoxDecoration(
                            color: controller.isActive_Beeps == false
                                ? ColorConstants.primaryDarkColor
                                : Vx.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: "ACTIVE BEEPS"
                              .text
                              .center
                              .color(controller.isActive_Beeps == false
                                  ? Vx.white
                                  : ColorConstants.primaryDarkColor)
                              .size(14.sp)
                              .make(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              15.heightBox,
              controller.isActive_Beeps ? completedCompaigns() : viewoffer()
            ],
          );
        }),
      ),
    );
  }

  Container completedCompaigns() {
    return Container(
      height: 135.h,
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
              height: 1000,
              width: 220,
            ),
            ListTile(
              title: "\$200".text.make(),
              subtitle: "Shoes advertisement".text.size(8).make(),
              leading: Image.asset("assets/Rectangle 127.png"),
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
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("02/12/2022"),
                    100.widthBox,
                    Text("Duration    20 Days"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container viewoffer() {
    return Container(
      height: 145.h,
      width: 388.w,
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.primaryDarkColor),
          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: "\$200".text.make(),
              subtitle: "Shoes advertisement".text.make(),
              leading: Image.asset("assets/Rectangle 127.png"),
              trailing: Card(
                  color: Vx.hexToColor("#FFF7E9"),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: "Active".text.make(),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  // "02/12/2022".text.make(),
                  Column(
                    children: [
                      Card(
                          color: ColorConstants.primaryDarkColor,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: "02".text.white.make(),
                          )),
                      Text(
                        "DAYS",
                        style: TextStyle(fontSize: 5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                          color: ColorConstants.primaryDarkColor,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: "03".text.white.make(),
                          )),
                      Text(
                        "HOURS",
                        style: TextStyle(fontSize: 5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                          color: ColorConstants.primaryDarkColor,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: "30".text.white.make(),
                          )),
                      Text(
                        "MINUTES",
                        style: TextStyle(fontSize: 5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                          color: ColorConstants.primaryDarkColor,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: "20".text.white.make(),
                          )),
                      Text(
                        "SECONDS",
                        style: TextStyle(fontSize: 5),
                      ),
                    ],
                  ),
                  Spacer(),
                  "Proof Task".text.make(),
                  10.widthBox,
                  GestureDetector(
                    onTap: () {
                      Get.to(ProofOfWork());
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: ColorConstants.primaryDarkColor,
                            border: Border.all(
                                color: ColorConstants.primaryDarkColor),
                            borderRadius: BorderRadius.circular(100.r)),
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
