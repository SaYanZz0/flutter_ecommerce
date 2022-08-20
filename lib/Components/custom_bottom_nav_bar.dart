import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';

import '../enum.dart';
import '../routs.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.selectedMenu}) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Get.toNamed(RoutesClass.getHomeRoute());
              },
              icon: Icon(Icons.home),
              color: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              color: MenuState.favourite == selectedMenu
                  ? kPrimaryColor
                  : Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
              color: MenuState.message == selectedMenu
                  ? kPrimaryColor
                  : Colors.grey,
            ),
            IconButton(
              onPressed: () {
                Get.toNamed(RoutesClass.getUserProfileRoute());
              },
              icon: Icon(Icons.person),
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
