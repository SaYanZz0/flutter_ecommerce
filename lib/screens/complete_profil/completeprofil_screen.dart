import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/screens/complete_profil/components/completeprofile_body.dart';

import '../../size_config.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){Get.back();}, icon:Icon(Icons.arrow_back_ios)),
          title: Text('Sign Up' , style: TextStyle(fontSize: getProportionateScreenWidth(18) , color: Colors.black), textAlign: TextAlign.center,)),
      body:CompleteBody(),
    );
  }
}
