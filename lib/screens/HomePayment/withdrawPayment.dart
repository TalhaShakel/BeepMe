import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/route_names.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/HomePayment/adAccountScreen.dart';
import 'package:beep_me/screens/HomePayment/paynoeerPaymentScreen.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class WithDrawPaymentScreen extends StatefulWidget {
  const WithDrawPaymentScreen({super.key});

  @override
  State<WithDrawPaymentScreen> createState() => _WithDrawPaymentScreenState();
}

class _WithDrawPaymentScreenState extends State<WithDrawPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryDarkColor,
        title: "Withdraw".text.white.size(20).make(),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            getCardSelectionTile(true, ImageFiles.pMethSelectionMaster,
                StringConstants.strMasterCard),
            SizedBox(
              height: 12,
            ),
            getCardSelectionTile(false, ImageFiles.pMethSelectionStripe,
                StringConstants.strStripe),
            SizedBox(
              height: 12,
            ),
            getCardSelectionTile(false, ImageFiles.pMethSelectionPaypal,
                StringConstants.strPayPal),
            SizedBox(
              height: 12,
            ),
            getCardSelectionTile(false, ImageFiles.pMethSelectionSkrill,
                StringConstants.strSkrill),
            SizedBox(
              height: 12,
            ),
            getCardSelectionTile(false, ImageFiles.pMethSelectionPayoneer,
                StringConstants.strPayoneer),
            SizedBox(
              height: 12,
            ),
            getCardSelectionTile(false, ImageFiles.pMethSelectionGpay,
                StringConstants.strGooglePay),
            SizedBox(
              height: 24,
            ),
            // getRoundCorneredCircle(),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 100,
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(AddAccountScreen());
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorConstants.primaryDarkColor,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: TextUtils.getText("ADD ACCOUNT", 16,
                    AppConstants.robotoBoldFont, Colors.white),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(PaynoeerPayment());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(
                      width: 1, color: ColorConstants.primaryDarkColor),
                  onPrimary: ColorConstants.primaryDarkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: TextUtils.getText(
                    "WITHDRAW",
                    16,
                    AppConstants.robotoBoldFont,
                    ColorConstants.primaryDarkColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getCardSelectionTile(bool isFilled, String image, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 20,
        ),
        isFilled
            ? CircleAvatar(
                radius: 6,
                backgroundColor: ColorConstants.primaryDarkColor,
              )
            : CircleAvatar(
                radius: 6,
                backgroundColor: ColorConstants.primaryDarkColor,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorConstants.whiteColor,
                ),
              ),
        SizedBox(
          width: 24,
        ),
        ImageUtils.buildImage(image, 50, 34),
        SizedBox(
          width: 24,
        ),
        TextUtils.getText(text, 14, AppConstants.poppinsRegularFont)
      ],
    );
  }
}
