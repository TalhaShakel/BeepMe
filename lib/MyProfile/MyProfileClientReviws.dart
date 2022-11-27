import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/route_names.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProfileClientReviews extends StatefulWidget {
  const MyProfileClientReviews({super.key});

  @override
  State<MyProfileClientReviews> createState() => _MyProfileClientReviewsState();
}

class _MyProfileClientReviewsState extends State<MyProfileClientReviews> {
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
          // leading: ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
          title: TextUtils.getText(
              "Client Reviews", 18, AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getTileContainer(),
                getTileContainer(),
                getTileContainer(),
              ],
            ),
          ),
        ));
  }

  Widget getTileContainer() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 68,
      color: Color(0xffFFFCF6),
      child: Stack(
        children: [
          // ImageUtils.buildImage(ImageFiles.srchProfOvalIcon, 136, 78),
          ListTile(
            leading:
                ImageUtils.buildImage(ImageFiles.srchProfAvatarImg, 40, 40),
            title: TextUtils.getText(
                StringConstants.strJohnDoe, 14, AppConstants.robotoBoldFont),
            subtitle: TextUtils.getText(
                "United Kingdom", 8, AppConstants.robotoRegularFont),
            trailing: Container(
              width: 60,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  10.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextUtils.getText(
                          StringConstants.strRating,
                          14,
                          AppConstants.poppinsRegularFont,
                          ColorConstants.ratingYellowColor),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: ColorConstants.ratingYellowColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextUtils.getText(
                          "1 Month Ago",
                          8,
                          AppConstants.poppinsRegularFont,
                          ColorConstants.grayRatingCountColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            indent: 70,
            height: 1,
          ),
        ],
      ),
    );
  }
}
