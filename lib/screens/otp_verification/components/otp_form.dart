import 'package:flutter/material.dart';

import '../../../Components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  OTPForm({
    Key? key,
  }) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode? pin2FocusNode;

  FocusNode? pin3FocusNode;

  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      onChanged: (value){
                        nextField(value, pin2FocusNode);
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      onChanged: (value){
                        nextField(value, pin3FocusNode);
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      onChanged: (value){
                        nextField(value, pin4FocusNode);
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      onChanged: (value){
                        if (value.length == 1) {
                          pin4FocusNode!.unfocus();
                          // Then you need to check is the code is correct or not
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08,),
            DefaultButton(text: 'Continue', press: (){} , width: double.infinity,)
          ]
      ),
    );
  }
}