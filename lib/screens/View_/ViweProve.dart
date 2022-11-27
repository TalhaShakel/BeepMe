import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ViewProve extends StatelessWidget {
  const ViewProve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 0),
              width: MediaQuery.of(context).size.width,
              height: 130,
              color: ColorConstants.primaryDarkColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Vx.white,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: ImageUtils.buildImage(
                        ImageFiles.homeAvatarImage, 46, 46),
                    title: TextUtils.getText(StringConstants.strJohnDoe, 14,
                        AppConstants.robotoRegularFont, Colors.white),
                    subtitle: TextUtils.getText(StringConstants.strPersonalBal,
                        10, AppConstants.robotoRegularFont, Colors.white),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 28.0, horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 152,
                          width: 175,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                                image: AssetImage("assets/Rectangle 127.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.download,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: "11:32 AM".text.size(8).white.make(),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 28.0, horizontal: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 152,
                          width: 175,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                                image: AssetImage("assets/Rectangle 127.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.download,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: "11:32 AM".text.size(8).white.make(),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
