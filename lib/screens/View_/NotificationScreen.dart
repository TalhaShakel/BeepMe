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
            height: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.red,
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
                    Text("Duration"),
                    85.widthBox,
                    "4 Days".text.bold.make(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text("Earnings per Beep"),
                    25.widthBox,
                    "100".text.bold.make(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text("Total you will earn"),
                    25.widthBox,
                    "\$456".text.bold.make(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 165, top: 10),
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.red,
                      width: 1,
                    )),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Photo 5M",
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              75.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("ACCEPT"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.bottomSheet(bottomNavbarDrawer());
                      },
                      child: "REJECT".text.red500.make(),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(width: 1, color: Colors.red),
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
          borderRadius: BorderRadius.all(Radius.circular(10))),
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
              child:
                  "Don't Have Time".text.bold.red500.underline.size(16).make(),
              style:
                  ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
            ),
          ),
        ]),
      ),
    );
  }
}
