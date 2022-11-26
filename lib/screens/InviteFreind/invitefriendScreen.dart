import 'package:beep_me/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        title: "Invite friends".text.white.size(20).make(),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              "Let’s beep on BeepMe app! It’s a fast, simple and secure\napp we can advertise and earn money with our social platforms.",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 98,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: ColorConstants.primaryDarkColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                  10.widthBox,
                  "Copy".text.white.make(),
                ]),
              ),
            ),
            //////////////////////
            GestureDetector(
              onTap: (() {
                Get.bottomSheet(
                  bottomNavbarDrawer(),
                );
              }),
              child: Container(
                width: 98,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffFFF0D5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.share,
                      color: ColorConstants.primaryDarkColor,
                    ),
                    10.widthBox,
                    "Share"
                        .text
                        .white
                        .color(ColorConstants.primaryDarkColor)
                        .make(),
                  ]),
                ),
              ),
            ),
          ],
        )
      ]),
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
      height: 351,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(30.0),
            topRight: const Radius.circular(30.0),
          )),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Center(
            child: Container(
              height: 3,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          30.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage("assets/whatsapp.png")),
                    10.heightBox,
                    Text("Whatsapp")
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage("assets/whatsapp.png")),
                    10.heightBox,
                    Text("Whatsapp")
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage("assets/whatsapp.png")),
                    10.heightBox,
                    Text("Whatsapp")
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Image(image: AssetImage("assets/whatsapp.png")),
                    10.heightBox,
                    Text("Whatsapp")
                  ],
                ),
                55.widthBox,
                Column(
                  children: [
                    Image(image: AssetImage("assets/whatsapp.png")),
                    10.heightBox,
                    Text("Whatsapp")
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
