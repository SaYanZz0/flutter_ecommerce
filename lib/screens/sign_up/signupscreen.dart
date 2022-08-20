import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/screens/sign_up/components/signupbody.dart';

import '../../size_config.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:  AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            padding: EdgeInsets.zero,
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Sign Up',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.black),
            textAlign: TextAlign.center,
          )
      ),
      body: SignUpBody(),
    );
  }
}
