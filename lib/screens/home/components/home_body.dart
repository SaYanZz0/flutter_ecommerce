import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/home/components/popular_products.dart';
import 'package:shop_app/screens/home/components/sales_banner.dart';
import 'package:shop_app/screens/home/components/search_field.dart';
import 'package:shop_app/screens/home/components/special_brands.dart';
import 'package:shop_app/size_config.dart';
import 'bigtitle.dart';
import 'categories.dart';
import 'icon_button_withcounter.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchField(),
                        CircleIcon(
                          numbitems: 0,
                          icon: Icon(Icons.shopping_cart),
                          press: () {
                            Get.toNamed(RoutesClass.getCartRoute());
                          },
                        ),
                        CircleIcon(
                            icon: Icon(Icons.notifications),
                            numbitems: 3,
                            press: () {})
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.04,
                  ),
                  SalesBanner(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  Categories(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.015,
                  ),
                  BigTitle(
                    text: 'Special For you',
                    press: () {},
                  ),
                ],
              ),
            ),
            SpecialBrandsForYou(),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: BigTitle(text: 'Popular Products', press: () {})),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}