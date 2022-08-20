import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/Components/adderror.dart';
import 'package:shop_app/Components/socialcard.dart';
import 'package:shop_app/auth_controller.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/size_config.dart';

import '../../../Components/default_button.dart';
import '../../../constants.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  String? password;
  String? email;
  String? confirmpassword;
  List<String> errors = [];
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text('Register Account', style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),),
                Text(
                  'Complete your Details or continue with social media account',
                  textAlign: TextAlign.center,)
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    buildEmailFormField(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    buildPasswordFormField(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    buildConfirmPassFormField(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    DefaultButton( width: double.infinity,text: 'Continue', press: () {
                      AuthController.instance.Register(emailController.text, passwordController.text);
                      if (formkey.currentState!.validate()) {
                        Get.toNamed(RoutesClass.getCompleteSignRoute());
                        formkey.currentState!.save();
                      }
                    }),
                    SizedBox(height: SizeConfig.screenHeight * 0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(
                            press: () {}, image: 'assets/images/fbpng.png'
                        ),
                        SocialCard(
                            press: () {}, image: 'assets/images/2702602.png'
                        ),
                        SocialCard(
                            press: () {}, image: 'assets/images/twitter.png'
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(10),),
                    Text(
                      'By Continuing you confirm that you agree with our term and condition',
                      textAlign: TextAlign.center,)
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmpassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirmpassword) {
          removeError(error: kMatchPassError);
        }
        confirmpassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Icon(Icons.lock),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Icon(Icons.lock),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }


  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Icon(Icons.email),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }
}