import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/Components/adderror.dart';
import 'package:shop_app/Components/default_button.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/forgetpasswordbody.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Forget Password',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.black),
            textAlign: TextAlign.center,
          )
      ),
      body: ForgetBody(),
    );
  }
}