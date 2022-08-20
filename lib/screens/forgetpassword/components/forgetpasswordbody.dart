import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Components/adderror.dart';
import '../../../Components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ForgetBody extends StatefulWidget {
  const ForgetBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgetBody> createState() => _ForgetBodyState();
}

class _ForgetBodyState extends State<ForgetBody> {
  String? email;
  List<String> errors = [];
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Column(
            children: [
              Text(
                'Forget Password',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),
              ),
              Text(
                'Please Enter Your Email and we will send you a link to return to your account',
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Form(
              key: formkey,
              child: Column(
                children: [
                  EmailFormField(),
                  FormError(errors: errors),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  DefaultButton(width:double.infinity,text: 'Continue', press: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                    }else{
                      Get.snackbar('About Password', 'Password Message',
                          margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(20)),
                          backgroundColor: Colors.redAccent,
                          snackPosition: SnackPosition.BOTTOM,
                          titleText: Text(
                            'Action Failed',
                            style: TextStyle(color: Colors.white),
                          ),
                          messageText:Column(
                            children: [
                              ...List.generate(errors.length, (index) => Text(errors[index],style: TextStyle(color: Colors.white),))
                            ],
                          ),
                      );
                    }
                  }),
                  SizedBox(height: SizeConfig.screenHeight * 0.08,)
                ],
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have an account ? ", style: TextStyle(),),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up', style: TextStyle(color: kPrimaryColor),)
              )
            ],
          )
        ],
      ),
    );
  }
  EmailFormField() {
    return TextFormField(
      onSaved: (NewValue) => email = NewValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState((){
            errors.remove(kEmailNullError);
          });
        } else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          setState((){
            errors.remove(kInvalidEmailError);
          });
        }
      },
      autofillHints: [AutofillHints.email],
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState((){
            errors.add(kEmailNullError);
            print(errors);
          });
        }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError) && !errors.contains(kEmailNullError)){
          setState((){
            errors.add(kInvalidEmailError);
            print(errors);
          });
        }else
          return null;
      },
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              gapPadding: 5),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              gapPadding: 5),
          suffixIcon: Icon(Icons.mail),
          labelText: 'Email',
          hintText: 'Enter Your Email'),
    );
  }
}
