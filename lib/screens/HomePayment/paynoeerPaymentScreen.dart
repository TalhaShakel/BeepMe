import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class PaynoeerPayment extends StatelessWidget {
  const PaynoeerPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        title: "Withdraw".text.white.size(20).make(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              Align(
                  alignment: Alignment.topLeft,
                  child: "Enter amount".text.gray400.size(8).make()),
              8.heightBox,
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorConstants.primaryDarkColor, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //////////////////////////////
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorConstants.primaryDarkColor, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: "\$200".text.black.bold.size(14).make(),
                  ),
                  // hintText: "Enter amount",
                  // labelText: "Enter amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // errorText: _errorText,
                ),
              ),
              100.heightBox,
              //////////////////////////
              ///
              Spacer(),
              GestureDetector(
                onTap: () {
                  print("object");
                  // Get.dialog(Container(
                  //     height: 200,
                  //     width: 100,
                  //     color: Colors.white,
                  //     child: Image.asset("assets/payment-method 1.png")));
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return Container(
                  //       height: 200,
                  //       width: 100,
                  //       color: Colors.white,
                  //     );
                  //   },
                  // );
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: ColorConstants.primaryDarkColor,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: TextUtils.getText("TRANSFER", 16,
                        AppConstants.robotoBoldFont, Colors.white),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
