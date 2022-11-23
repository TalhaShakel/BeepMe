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

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {

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
              StringConstants.strSearch, 18, AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const SizedBox(width: 16,),
                   Expanded(
                     child:  Container(
                       width: MediaQuery.of(context).size.width,
                       child: InputUtil.getInputWithRedCorner("Location",),
                     ),
                   ),

                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      height: 48,
                      width: 94,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, Routes.searchedProfScreen);
                        },

                        style:ElevatedButton.styleFrom(
                          primary: ColorConstants.primaryDarkColor,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child:  TextUtils.getText(
                            StringConstants.strSearch, 16, AppConstants.robotoBoldFont, Colors.white),
                      ),
                    ),


                  ],
                ),

                const SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child:  TextUtils.getText(
                          StringConstants.strAge,
                          16
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      height: 35,
                      width: 104,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorConstants.primaryDarkColor,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          TextUtils.getText(
                              "10 - 15",
                              16,
                              AppConstants.robotoRegularFont,
                              ColorConstants.txtGrayColor
                          ),

                          const Icon(
                            Icons.arrow_forward_ios_rounded, color: Colors.black, size: 16,
                          )

                        ],
                      ),
                    ),


                  ],
                ),

                const SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child:  TextUtils.getText(
                          StringConstants.strGender,
                          16
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        CircleAvatar(
                          radius: 6,
                          backgroundColor: ColorConstants.primaryDarkColor,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextUtils.getText(
                              StringConstants.strMale,
                              14
                          ),
                        ),

                        getRoundCorneredCircle(),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextUtils.getText(
                              StringConstants.strFemale,
                              14
                          ),
                        ),


                        getRoundCorneredCircle(),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextUtils.getText(
                              StringConstants.strOther,
                              14
                          ),
                        ),

                        getRoundCorneredCircle(),

                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 16),
                          child: TextUtils.getText(
                              StringConstants.strAll,
                              14
                          ),
                        ),

                      ],
                    )
                  ],
                ),

                const SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child:  TextUtils.getText(
                          StringConstants.strInterests,
                          16
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      height: 35,
                      width: 158,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorConstants.primaryDarkColor,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [

                          // TextUtils.getText(
                          //     StringConstants.strTraveling,
                          //     16,
                          //     AppConstants.robotoRegularFont,
                          //     ColorConstants.txtGrayColor
                          // ),

                          Expanded(
                            child: DropDownItemsWidget(),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ImageUtils.buildImage(
                      ImageFiles.searchMapImg,
                      MediaQuery.of(context).size.width, 400
                  ),
                )



              ],
            ),
          ),
        )
    );
  }






  Widget getSearchContainer(double _width, double _height){
    return  Container(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primaryDarkColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))
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
