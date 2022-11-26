import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/screens/HomePayment/withdrawPayment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class WithDrawScreen extends StatelessWidget {
  const WithDrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        title: "Withdraw".text.white.size(20).make(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 104,
              width: 388,
              decoration: BoxDecoration(
                color: Color(0xffFFFCF6),
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          "Available for withdraw".text.black.bold.make(),
                          "\$200".text.black.bold.make(),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          "Total withdral amount".text.black.bold.make(),
                          "\$300".text.black.bold.make(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///////////////////////////////
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 48,
                width: 388,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(WithDrawPaymentScreen());
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
            ),
          )
        ]),
      ),
    );
  }
}
