import 'package:beep_me/Service%20and%20models/Service.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/login_with/widgets/social_button.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../constants/app_constants.dart';
import '../../constants/route_names.dart';
import '../../ui_utils/image_files.dart';
import '../../ui_utils/image_utils.dart';

class LoginWithScreen extends StatefulWidget {
  const LoginWithScreen({Key? key}) : super(key: key);

  @override
  LoginWithScreenState createState() => LoginWithScreenState();
}

class LoginWithScreenState extends State<LoginWithScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow

    // Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // credential.
// credential.token
    // Once signed in, return the UserCredential
    UserCredential cred =
        await FirebaseAuth.instance.signInWithCredential(credential);
    return cred;
    // }
  }

  newUser(UserCredential cre) async {
    // gender = await GoogleSignInApi.  getGender();
    try {
      Map data =  {
        "profile_name": cre.user?.displayName.toString(),
        "social_login_provider": "google",
        "social_login_token": cre.user!.uid,
        "profile_image":cre.user?.photoURL.toString(),
        "gender": "male",
        "google_profile_link":"cred",
        "google_id":await cre.user!.getIdToken(),
        "email": cre.user!.email,
      };
      print(data);
      await ApiService().googleLogin(data);
      print("data uploaded");
    } catch (e) {
      print(e);
      Get.snackbar("$e", "");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtils.getText(StringConstants.splashScreenTitle, 22,
            AppConstants.brunoAceRegularFont, Colors.white),
        centerTitle: true,
        backgroundColor: ColorConstants.primaryDarkColor,
        leading: const SizedBox(),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            ColorConstants.orangeShadeColor,
          ],
        )),
        child: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtils.getText(StringConstants.strEarnBeing, 24,
                      AppConstants.robotoRegularFont, Colors.black),
                  const SizedBox(
                    width: 6,
                  ),
                  TextUtils.getText(
                      StringConstants.strSocial,
                      24,
                      AppConstants.robotoRegularFont,
                      ColorConstants.primaryDarkColor),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              ImageUtils.buildImage(ImageFiles.loginWithSocialImage, 300, 300),
              const SizedBox(
                height: 60,
              ),
              TextUtils.getText(StringConstants.strLoginWith, 20,
                  AppConstants.robotoRegularFont, Colors.black),
              const SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Divider(height: 2, color: ColorConstants.dividerColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButtonUtil.getFaceBookButton(() {
                    Navigator.pushNamed(context, Routes.facebookLoginScreen);
                  }),
                  const SizedBox(
                    width: 25,
                  ),
                  SocialButtonUtil.getGoogleButton(() async {
                    try {
                      EasyLoading.show();
                      UserCredential cre = await signInWithGoogle();
                      if (cre.additionalUserInfo!.isNewUser) {
                        newUser(cre);
                      }

                      EasyLoading.dismiss();
                    } catch (e) {
                      EasyLoading.dismiss();

                      Get.snackbar("$e ", "");
                      print(e.toString());
                    }
                    // Navigator.pushNamed(context, Routes.googleLoginScreen);
                  })
                ],
              ),
              // const Spacer(),
              SizedBox(
                height: 55,
              ),

              TextUtils.getText(
                  StringConstants.strAgreeWithTerms,
                  12,
                  AppConstants.robotoRegularFont,
                  ColorConstants.agreeWithTermsTextColor),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
