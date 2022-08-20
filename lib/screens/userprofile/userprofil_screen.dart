import 'package:flutter/material.dart';
import 'package:shop_app/Components/custom_bottom_nav_bar.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enum.dart';
import 'package:shop_app/screens/userprofile/components/userprofile_body.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile' , style: TextStyle(color: kSecondaryColor),)),
      ),
      body: UserProfileBody(),
      bottomNavigationBar:CustomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
