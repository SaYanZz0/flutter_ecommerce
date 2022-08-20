import 'package:flutter/material.dart';
import 'package:shop_app/Components/custom_bottom_nav_bar.dart';
import 'package:shop_app/screens/home/components/home_body.dart';
import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomNavBar(selectedMenu: MenuState.home),
    );
  }
}
