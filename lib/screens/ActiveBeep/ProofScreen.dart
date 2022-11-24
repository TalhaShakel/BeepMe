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

class ProofScreen extends StatelessWidget {
  const ProofScreen({super.key});

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
                      subtitle: Row(
                        children: [
                          TextUtils.getText("4.9  ", 14,
                              AppConstants.robotoRegularFont, Colors.white),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            ////////////////////////////////////
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 28.0, horizontal: 20),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Rectangle 127.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: GestureDetector(
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
                            ],
                          ),
                          Text("11:32 AM"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 28.0, horizontal: 20),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Rectangle 127.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: GestureDetector(
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
                            ],
                          ),
                          Text("11:32 AM"),
                        ],
                      ),
                    ),
                  ),
                  50.heightBox,
                  ///////////////////////////////
                  ListTile(
                    leading: Stack(
                      children: [
                        ImageUtils.buildImage(
                            ImageFiles.srchProfAvatarImg, 50, 50),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: ImageUtils.buildImage(
                                ImageFiles.srchProfAvatarImg, 21, 14)),
                      ],
                    ),
                    title: "John Doe".text.size(16).bold.make(),
                  ),
                  //////////////////////////////////
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: "5.0".text.yellow500.size(18).make(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 90,
                            height: 35,
                            child: Center(child: "Submit".text.white.make())),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: Get.width,
                      height: 48,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "The Job was done",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  // 10.heightBox,
                  SizedBox(
                    height: 19,
                    width: 129,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: "The job was not done"
                          .text
                          .bold
                          .red500
                          .underline
                          .size(16)
                          .make(),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, elevation: 0),
                    ),
                  ),
                  30.heightBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
