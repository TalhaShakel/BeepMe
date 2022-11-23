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

class SearchedProfileScreen extends StatefulWidget {
  const SearchedProfileScreen({Key? key}) : super(key: key);

  @override
  SearchedProfileScreenState createState() => SearchedProfileScreenState();
}

class SearchedProfileScreenState extends State<SearchedProfileScreen> {

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
              StringConstants.strBeepMe, 18, AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 24,),
                getTileContainer(),

                SizedBox(height: 10,),
                getTileContainer(),

                SizedBox(height: 10,),
                getTileContainer(),

                SizedBox(height: 10,),
                getTileContainer(),

                SizedBox(height: 24,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   getRoundedButton("Shuffle", (){

                   }),
                   getRoundedButton("Beep All", (){

                   })
                 ],
               )

              ],
            ),
          ),
        )
    );
  }


  
  Widget getRoundedButton(String text, Function callback){
    return  Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 48,
      width: 94,
      child: ElevatedButton(
        onPressed: () => callback,

        style:ElevatedButton.styleFrom(
          primary: ColorConstants.yellowButtonBg,
          onPrimary: ColorConstants.primaryDarkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child:  TextUtils.getText(text, 14, AppConstants.robotoBoldFont, ColorConstants.primaryDarkColor),
      ),
    );
  }


  Widget getTileContainer(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 78,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primaryDarkColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      child: Stack(
        children: [

          ImageUtils.buildImage(
            ImageFiles.srchProfOvalIcon, 136, 78
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: ListTile(

              onTap: (){
                Navigator.pushNamed(context, Routes.mainProfileScreen);
              },

              leading: ImageUtils.buildImage(ImageFiles.srchProfAvatarImg, 40, 40),
              title: TextUtils.getText(StringConstants.strJohnDoe, 14, AppConstants.robotoBoldFont),
              subtitle: TextUtils.getText(StringConstants.strProLevel, 10, AppConstants.robotoRegularFont),

              trailing: Container(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    TextUtils.getText(StringConstants.strRating, 14,
                        AppConstants.poppinsRegularFont, ColorConstants.ratingYellowColor),

                    SizedBox(width: 4,),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3),
                      child: Icon(Icons.star_rate_rounded, color: ColorConstants.ratingYellowColor,),
                    ),

                    SizedBox(width: 4,),
                    TextUtils.getText(StringConstants.strRatingCount, 13,
                        AppConstants.poppinsRegularFont, ColorConstants.grayRatingCountColor),

                  ],
                ),
              ),

            ),
          )

        ],
      ),
    );
  }


}
