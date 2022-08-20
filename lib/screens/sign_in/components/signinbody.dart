import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/size_config.dart';
import '../../../Components/socialcard.dart';
import 'sign_form.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  bool remember = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Column(children: [
                  Text('Welcome Back',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(18))),
                  Text(
                    'Sign in with your email and password or continue with social media',
                    textAlign: TextAlign.center,
                  ),
                ]),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.06,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                        press: () {},
                        image: 'assets/images/fbpng.png'
                    ),
                    SocialCard(
                        press: () {},
                        image: 'assets/images/2702602.png'
                    ),
                    SocialCard(
                        press: () {},
                        image: 'assets/images/twitter.png'
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an account ? ", style: TextStyle(),),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(RoutesClass.getSignUpRoute());
                        },
                        child: Text(
                          'Sign Up', style: TextStyle(color: kPrimaryColor),)
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}


  // This Is The Form of The Screen That Contain TextFormFields And The CheckBox , ForgetPassword , The Errors And The DefaultButton
