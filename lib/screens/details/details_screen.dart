import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/details_body.dart';
import 'package:shop_app/screens/home/components/icon_button_withcounter.dart';
import 'package:shop_app/size_config.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating:arguments!.product.rating ,),
      ),
      body:DetailsBody(product: arguments.product),
    );
  }
}

//This is Our Custom Bar

// But we need to pass our product to our details screen
//so we need to create an argument class

class ProductDetailsArguments {
  late Product product;

  ProductDetailsArguments({required this.product});
}
