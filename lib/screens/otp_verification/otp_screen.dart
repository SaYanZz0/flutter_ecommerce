import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/Components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/otp_verification/components/otp_body.dart';
import '../../size_config.dart';
import 'components/otp_form.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios)),
            title: Text(
              'OTP Verification',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.black),
              textAlign: TextAlign.center,
            )),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Column(
                  children: [
                    Text('OTP Verification',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(18))),
                    Text(
                      'We Sent your Code to your Phone number  \nThis code will be expired!',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.09),
                OTPForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.3),
                TextButton(
                    onPressed: (){},
                    child:Text('Resend OTP' , style: TextStyle(decoration: TextDecoration.underline , color: kPrimaryColor),)
                )
              ])),
        ));
  }
}

