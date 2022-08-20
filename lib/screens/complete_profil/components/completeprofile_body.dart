import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/Components/default_button.dart';
import 'package:shop_app/routs.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteBody extends StatefulWidget {
  const CompleteBody({Key? key}) : super(key: key);

  @override
  State<CompleteBody> createState() => _CompleteBodyState();
}

class _CompleteBodyState extends State<CompleteBody> {
  String? firstname;
  String? lastname;
  String? phonenumber;
  String? adress;
  GlobalKey<FormState> formkey = GlobalKey<FormState>() ;
  List<String> errors =[];

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
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Column(
              children: [
                Text('Complete Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(18))),
                Text(
                  'Complete your details or continue  \nwith social media',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            CompleteForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            Text('By Continuing you confirm that you agree with our term and condition' , textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }



  // The Form Of The Screen
  Form CompleteForm(){
    return Form(
      key: formkey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildAddressFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              width: double.infinity,
                text: 'Continue',
                press:(){
                  if(formkey.currentState!.validate()){
                    Get.toNamed(RoutesClass.getOTPRoute());
                    formkey.currentState!.save();
                  }
                }
            )
          ],
        )
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => adress = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your phone address",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastname = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstname = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 5),
      ),
    );
  }
}