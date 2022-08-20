import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';

class AuthController extends GetxController {
  //AuthController.instance...
  static AuthController instance = Get.find();

  //now we have to declare a model for the user : email , password , name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    // our User will be Notified if anything has changed on the state of the user
    _user.bindStream(auth.userChanges());
  }

  _initialscreen(User? user) {
    if (user == null) {
      print('Go to Login page');
      Get.offAll(() => SignInPage());
    } else {
      Get.offAll(() => HomeScreen());
    }
  }

  void Register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('About User', 'User Message',
          margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(20)),
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Account Creation Failed',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            'One of The Fields are empty',
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  void LogIn(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('About Login', 'Login Message',
          margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(20)),
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Account Login Failed',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            'The Email or The Password is incorrect',
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  void LogOut()async{
    await auth.signOut();
  }
}
