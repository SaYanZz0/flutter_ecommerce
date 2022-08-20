import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/product_description.dart';
import 'package:shop_app/screens/details/components/product_images.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';

import '../../../Components/default_button.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
import 'color_dots.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        SizedBox(
          height: getProportionateScreenHeight(12),
        ),
        TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                ),
                TopRoundedContainer(
                    color: Color(0xfff5f6f9),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(10)),
                      child: Column(
                        children: [
                          ColorDots(
                            product: product,
                          ),
                          SizedBox(height: getProportionateScreenHeight(15),),
                          DefaultButton(text: 'Add to cart', press: () {} ,width: double.infinity,),
                        ],
                      ),
                    )),
              ],
            )),
      ],
    );
  }
}
