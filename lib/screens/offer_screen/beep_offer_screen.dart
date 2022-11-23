import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';

class BeepOfferScreen extends StatefulWidget {
  const BeepOfferScreen({Key? key}) : super(key: key);

  @override
  BeepOfferScreenState createState() => BeepOfferScreenState();
}

class BeepOfferScreenState extends State<BeepOfferScreen> {

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
          leading: ImageUtils.buildImage(
              ImageFiles.edtProfBackArrow, 24, 24),
          title: TextUtils.getText(
              StringConstants.strBeepAnOffer, 18, AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextUtils.getText(
                      StringConstants.strChoosePlatform, 16, AppConstants.robotoRegularFont, Colors.black, TextAlign.center
                  ),
                ),


                const SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: ColorConstants.primaryDarkColor,
                          ),
                          const SizedBox(width: 10,),
                          ImageUtils.buildImage(ImageFiles.edtProfTikTok, 50, 50),
                        ],
                      ),

                      Row(
                        children: [
                          getRoundCorneredCircle(),
                          const SizedBox(width: 10,),
                          ImageUtils.buildImage(ImageFiles.edtProfWhatsapp, 50, 50),
                        ],
                      ),


                      Row(
                        children: [
                          getRoundCorneredCircle(),
                          const SizedBox(width: 10,),
                          getCircleImage( ImageFiles.edtProfBlueCircle, ImageFiles.loginWithFacebook),
                        ],
                      ),


                      Row(
                        children: [
                          getRoundCorneredCircle(),
                          const SizedBox(width: 10,),
                          getCircleImage( ImageFiles.edtProfRedCircle, ImageFiles.edtProfInstagram),
                        ],
                      ),


                    ],
                  ),
                ),



                const SizedBox(height: 32,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 16),
                  child: TextUtils.getText(
                      StringConstants.strAddPhoto, 16, AppConstants.robotoRegularFont, Colors.black, TextAlign.left
                  ),
                ),


                const SizedBox(height: 16,),
                Row(
                  children: [

                    const SizedBox(width: 14,),
                    ImageUtils.buildImage(ImageFiles.beepOfferAddImage, 91, 73)
                  ],
                ),


                const SizedBox(height: 48,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  height: 254,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.borderGrayColor,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(16))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(
                        padding: EdgeInsets.only(top: 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            TextUtils.getText(
                                StringConstants.strOfferForBeep,
                                16, AppConstants.robotoBoldFont
                            ),

                           Container(
                             width: 67,
                             height: 36,
                             child:  InputUtil.getInputWithRedCorner(r"$20"),
                           )

                          ],
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          TextUtils.getText(
                              StringConstants.strHowManyDays,
                              16, AppConstants.robotoBoldFont
                          ),

                          Container(
                            width: 67,
                            height: 36,
                            child:  InputUtil.getInputWithRedCorner(r"$2"),
                          )

                        ],
                      ),


                      Padding(
                        padding: EdgeInsets.only(bottom: 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            TextUtils.getText(
                                StringConstants.strHowManyPpl,
                                16, AppConstants.robotoBoldFont
                            ),

                            Container(
                              width: 67,
                              height: 36,
                              child:  InputUtil.getInputWithRedCorner(r"$2"),
                            )

                          ],
                        ),
                      ),


                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: 28, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      TextUtils.getText(
                          StringConstants.strTotalPrice,
                          16, AppConstants.robotoBoldFont
                      ),

                      Container(
                        width: 67,
                        height: 36,
                        child:  InputUtil.getInputWithRedCorner(r"$200"),
                      )

                    ],
                  ),
                ),



                SizedBox(height: 80,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, Routes.searchScreen);
                    },

                    style:ElevatedButton.styleFrom(
                      primary: ColorConstants.primaryDarkColor,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child:  TextUtils.getText(
                        StringConstants.strNxt, 16, AppConstants.robotoBoldFont, Colors.white),
                  ),
                ),


                SizedBox(height: 16,),

              ],
            ),
          ),
        )
    );
  }


  Widget getCircleImage(String img, String img2){
    return Container(
      height: 50,
      width: 50,
      child: Stack(
        children: [
          ImageUtils.buildImage(img, 50, 50),
          Align(
            alignment: Alignment.center,
            child:  ImageUtils.buildImage(img2, 30, 30),
          )
        ],
      ),
    );
  }


  Widget getRoundCorneredCircle(){
    return  Container(
      width: 13,
      height: 13,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primaryDarkColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(50))
      ),
    );
  }
}
