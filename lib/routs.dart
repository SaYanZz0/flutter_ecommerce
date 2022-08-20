import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profil/completeprofil_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgetpassword/forgetpasswordscreen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/otp_verification/otp_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/signupscreen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/userprofile/userprofil_screen.dart';

class RoutesClass{
  static String splash= '/';
  static String signIn = '/SignIn';
  static String forgetpassword = '/ForgetPassword';
  static String signUp = '/SignUp';
  static String completesign = '/CompleteSign';
  static String otp = '/OTP';
  static String home = '/Home';
  static String details = '/details';
  static String cart = '/Cart';
  static String userprofile = '/UserProfile';

  static String getSplashRoute() => splash;
  static String getSignInRoute() => signIn;
  static String getForgetPasswordRoute() => forgetpassword;
  static String getSignUpRoute() => signUp;
  static String getCompleteSignRoute() => completesign;
  static String getOTPRoute() => otp;
  static String getHomeRoute() => home;
  static String getDetailsRoute() => details;
  static String getCartRoute() => cart;
  static String getUserProfileRoute() =>userprofile ;


  static List<GetPage> Routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: signIn, page: () => SignInPage()),
    GetPage(name: forgetpassword, page: () => ForgetPasswordScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
    GetPage(name: completesign, page:() => CompleteProfileScreen()),
    GetPage(name: otp, page: () => OTPScreen()),
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: details, page: ()=> DetailsScreen()),
    GetPage(name: cart, page: ()=> CartScreen()),
    GetPage(name: userprofile, page:()=> UserProfileScreen())
  ];
}
