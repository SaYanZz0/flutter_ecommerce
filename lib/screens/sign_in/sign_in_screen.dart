import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/screens/sign_in/components/signinbody.dart';
import 'package:shop_app/size_config.dart';

class SignInPage extends StatelessWidget {
  static String Routename = '/Sign_in';
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Get.back();}, icon:Icon(Icons.arrow_back_ios)),
        title: Text('Sign in' , style: TextStyle(fontSize: getProportionateScreenWidth(18) , color: Colors.black), textAlign: TextAlign.center,)),
      body:SignInBody()
    );
  }
}
