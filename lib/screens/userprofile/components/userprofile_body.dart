import 'package:flutter/material.dart';
import 'package:shop_app/auth_controller.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/userprofile/components/profile_page_image.dart';

import '../../../size_config.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(10),),
        ProfileImageWidget(),
        SizedBox(height: getProportionateScreenWidth(20),),
        CustomRowContainer(text: 'My Account', icon: Icons.person ,press: (){},),
        CustomRowContainer(text: 'Notifications', icon: Icons.notifications ,press: (){},),
        CustomRowContainer(text: 'Settings', icon: Icons.settings ,press: (){},),
        CustomRowContainer(text: 'Help Center', icon: Icons.help ,press: (){},),
        CustomRowContainer(text: 'Log Out', icon: Icons.logout ,press: (){AuthController.instance.LogOut();},),
      ],
    );
  }
}

class CustomRowContainer extends StatelessWidget {
  const CustomRowContainer({
    Key? key, required this.text, required this.icon, required this.press,
  }) : super(key: key);
final text ,icon ,press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(10)),
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          height: getProportionateScreenHeight(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kSecondaryColor.withOpacity(0.1)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon , color: kPrimaryColor,),
                  SizedBox(width: getProportionateScreenWidth(10),),
                  Text(text)
                ],
              ),
              Icon(Icons.arrow_forward_ios ,color: Colors.grey,)
            ],
          ),
        ),
      ),
    );
  }
}