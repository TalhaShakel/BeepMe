import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/screens/payment_screens/payoneer_payment.dart';
import 'package:beep_me/screens/search/widget/dropdown_item_widget.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class StripePaymentScreen extends StatefulWidget {
  const StripePaymentScreen({Key? key}) : super(key: key);

  @override
  StripePaymentScreenState createState() => StripePaymentScreenState();
}

class StripePaymentScreenState extends State<StripePaymentScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryDarkColor,
          centerTitle: true,
          leading: ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
          title: TextUtils.getText(StringConstants.strPayWithStripeCard, 18,
              AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ImageUtils.buildImage(ImageFiles.paymentStripeCard,
                      MediaQuery.of(context).size.width, 200),
                ),
                const SizedBox(
                  height: 24,
                ),
                getRoundCorneredCircle(
                  StringConstants.strEmail,
                ),
                const SizedBox(
                  height: 24,
                ),
                getRoundCorneredCircle(
                  StringConstants.strCardHolderName,
                ),
                const SizedBox(
                  height: 24,
                ),
                getRoundCorneredCircle(
                  StringConstants.strCardNumber,
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    getRoundCorneredCircle(r"$", 80, 48, 0),
                    const SizedBox(
                      width: 16,
                    ),
                    getRoundCorneredCircle(
                        StringConstants.strExpiryDate, 120, 48, 0),
                    const SizedBox(
                      width: 16,
                    ),
                    getRoundCorneredCircle(StringConstants.strCVC, 80, 48, 0),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, Routes.homeScreen);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PayoneerPayment()));
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
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }

  Widget getRoundCorneredCircle(String hint,
      [double width = 0, double height = 48, double marginHorizontal = 16]) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: marginHorizontal),
        width: width != 0 ? width : MediaQuery.of(context).size.width,
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
