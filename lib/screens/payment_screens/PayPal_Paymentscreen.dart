import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/home/home_screen.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayPal_Payment_screen extends StatelessWidget {
  const PayPal_Payment_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        centerTitle: true,
        leading: ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
        title: TextUtils.getText(StringConstants.strPayWithPayPalCard, 18,
            AppConstants.robotoBoldFont, Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ImageUtils.buildImage(ImageFiles.paymentPaypalCard,
                MediaQuery.of(context).size.width, 200),
          ),
          const SizedBox(
            height: 24,
          ),
          getRoundCorneredCircle(
            StringConstants.strPaymentRequestID,
          ),
          const SizedBox(
            height: 24,
          ),
          getRoundCorneredCircle(
            StringConstants.strDescription,
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 48,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, Routes.homeScreen);
                Get.to(() => HomeScreen());
              },
              style: ElevatedButton.styleFrom(
                primary: ColorConstants.primaryDarkColor,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: TextUtils.getText(StringConstants.strPayNow, 16,
                  AppConstants.robotoBoldFont, Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget getRoundCorneredCircle(String hint,
      [double width = 0, double height = 48, double marginHorizontal = 16]) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: marginHorizontal),
        width: width != 0 ? width : Get.width,
        height: height,
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: ColorConstants.primaryDarkColor,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: ColorConstants.primaryDarkColor,
                )),
            contentPadding: EdgeInsets.only(
              left: 16,
            ),
            hintStyle: TextStyle(
              fontSize: 14,
              fontFamily: AppConstants.poppinsRegularFont,
              color: ColorConstants.grayRatingCountColor,
            ),
          ),
          style: TextStyle(
            fontSize: 14,
            fontFamily: AppConstants.poppinsRegularFont,
          ),
        ));
  }
}
