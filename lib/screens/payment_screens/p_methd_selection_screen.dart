import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/screens/search/widget/dropdown_item_widget.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class PaymentMethodSelectionScreen extends StatefulWidget {
  const PaymentMethodSelectionScreen({Key? key}) : super(key: key);

  @override
  PaymentMethodSelectionScreenState createState() =>
      PaymentMethodSelectionScreenState();
}

class PaymentMethodSelectionScreenState
    extends State<PaymentMethodSelectionScreen> {
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
        title: TextUtils.getText(StringConstants.strAddPaymentMethod, 18,
            AppConstants.robotoBoldFont, Colors.white),
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
            getRoundCorneredCircle(),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 20,
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.stripePaymentScreen);
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorConstants.primaryDarkColor,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: TextUtils.getText(
                    StringConstants.strAddPaymentMethodCaps,
                    16,
                    AppConstants.robotoBoldFont,
                    Colors.white),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget getRoundCorneredCircle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: 168,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primaryDarkColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14, left: 19),
            child: TextUtils.getText(
                StringConstants.strOrderSummery,
                12,
                AppConstants.robotoRegularFont,
                ColorConstants.grayRatingCountColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextUtils.getText(
                StringConstants.strSubtotal,
                15,
                AppConstants.poppinsRegularFont,
              ),
              SizedBox(
                width: 8,
              ),
              TextUtils.getText(
                r"$4.8",
                15,
                AppConstants.poppinsRegularFont,
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextUtils.getText(
                StringConstants.strServiceFee,
                15,
                AppConstants.poppinsRegularFont,
              ),
              SizedBox(
                width: 8,
              ),
              TextUtils.getText(
                r"$0.2",
                15,
                AppConstants.poppinsRegularFont,
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 0.7,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextUtils.getText(
                      StringConstants.strDeliveryDate,
                      16,
                      AppConstants.poppinsRegularFont,
                    ),
                    TextUtils.getText(
                        StringConstants.strDummyDateTime,
                        10,
                        AppConstants.poppinsRegularFont,
                        ColorConstants.grayRatingCountColor),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextUtils.getText(
                      StringConstants.strTotalPrice,
                      15,
                      AppConstants.poppinsRegularFont,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    TextUtils.getText(
                      r"$5",
                      15,
                      AppConstants.poppinsRegularFont,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
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
