import 'package:beep_me/screens/View_/NotificationScreen.dart';
import 'package:beep_me/screens/View_/ViweProve.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Controllers/MianController.dart';
import '../../constants/app_constants.dart';
import '../../constants/color_constants.dart';
import '../../constants/string_constants.dart';
import '../../ui_utils/image_files.dart';
import '../../ui_utils/image_utils.dart';
import '../../ui_utils/text_utils.dart';

class ViewBeep extends StatelessWidget {
  const ViewBeep({super.key});

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
        title: TextUtils.getText(StringConstants.strViewBeep, 18,
            AppConstants.robotoRegularFont, Colors.white),
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
                child: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.vertical,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.isActiveOffers(true);
                      },
                      child: Container(
                        height: 48.h,
                        width: Get.width / 2 - 21,
                        decoration: BoxDecoration(
                            color: controller.isActive_Offers
                                ? ColorConstants.primaryDarkColor
                                : Vx.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: "Active Offers"
                              .text
                              .color(controller.isActive_Offers
                                  ? Vx.white
                                  : ColorConstants.primaryDarkColor)
                              .size(14.sp)
                              .make(),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.isActiveOffers(false);
                      },
                      child: Container(
                        height: 48.h,
                        width: Get.width / 2 - 21,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r),
                          color: controller.isActive_Offers == false
                              ? ColorConstants.primaryDarkColor
                              : Vx.white,
                        ),
                        child: Center(
                          child: "View Offer"
                              .text
                              .center
                              .color(controller.isActive_Offers == false
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
              controller.isActive_Offers ? activeoffer() : viewOffer()
            ],
          );
        }),
      ),
    );
  }

  Container activeoffer() {
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
                    onTap: () {},
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

  viewOffer() {
    return GestureDetector(
      onTap: () {
        Get.to(() => ViewOfferDetailsScreen());
      },
      child: Container(
        height: 135.h,
        width: 388.w,
        decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.primaryDarkColor),
            borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: "\$200".text.make(),
              subtitle: "Shoes advertisement".text.make(),
              leading: Image.asset("assets/Rectangle 127.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  "02/12/2022".text.make(),
                  Spacer(),
                  "Duration".text.make(),
                  10.widthBox,
                  "20 Days".text.make(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
