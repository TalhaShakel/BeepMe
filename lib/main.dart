import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/route_names.dart';
import 'package:beep_me/screens/View_/Viewbeepscreen.dart';
import 'package:beep_me/screens/facebook_login/facebook_login_screen.dart';
import 'package:beep_me/screens/google_login/google_login_screen.dart';
import 'package:beep_me/screens/home/home_screen.dart';
import 'package:beep_me/screens/login_with/login_with_screen.dart';
import 'package:beep_me/screens/media_screen/add_social_media_screen.dart';
import 'package:beep_me/screens/offer_screen/beep_offer_screen.dart';
import 'package:beep_me/screens/onboarding/on_boarding_Screen.dart';
import 'package:beep_me/screens/payment_screens/p_methd_selection_screen.dart';
import 'package:beep_me/screens/payment_screens/stripe_payment_screen.dart';
import 'package:beep_me/screens/prof_screen/edt_profile_screen.dart';
import 'package:beep_me/screens/prof_screen/main_profile_screen.dart';
import 'package:beep_me/screens/prof_screen/searched_prof_screen.dart';
import 'package:beep_me/screens/search/search_screen.dart';
import 'package:beep_me/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.white, //or set color with: Color(0xFF0000FF)
    // ));
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: ColorConstants.primaryDarkColor,
            ),
            //home: const SplashScreen(),
            initialRoute: "/",
            routes: {
              '/': (context) => const ViewBeep(),
              Routes.onBoardingScreen: (context) => const OnBoardingScreen(),
              Routes.loginWithScreen: (context) => const LoginWithScreen(),
              Routes.facebookLoginScreen: (context) =>
                  const FacebookLoginScreen(),
              Routes.googleLoginScreen: (context) => const GoogleLoginScreen(),
              Routes.homeScreen: (context) => const HomeScreen(),
              Routes.edtProfileScreen: (context) => const EditProfileScreen(),
              Routes.addSocialMediaScreen: (context) =>
                  const AddSocialMediaScreen(),
              Routes.beepOfferScreen: (context) => const BeepOfferScreen(),
              Routes.searchScreen: (context) => const SearchScreen(),
              Routes.searchedProfScreen: (context) =>
                  const SearchedProfileScreen(),
              Routes.mainProfileScreen: (context) => const MainProfileScreen(),
              Routes.paymentMethodSelectionScreen: (context) =>
                  const PaymentMethodSelectionScreen(),
              Routes.stripePaymentScreen: (context) =>
                  const StripePaymentScreen(),
            },
          );
        });
  }
}
