import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class PopularProducts extends StatefulWidget {
  PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  var icon = Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(200),
      width: double.infinity,
      child: ListView.builder(
          itemCount: demoProducts.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){
                Get.toNamed(RoutesClass.getDetailsRoute(), arguments: ProductDetailsArguments(product: demoProducts[index]));
              },
              child: Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
                child: SizedBox(
                  width: getProportionateScreenWidth(140),
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.02,
                        child: Container(
                          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                          decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(demoProducts[index].images[0]),
                        ),
                      ),
                      Text(
                        demoProducts[index].title,
                        style: TextStyle(color: Colors.black),
                        maxLines: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${demoProducts[index].price}',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionateScreenWidth(18)),
                          ),
                          InkWell(
                            onTap: (){
                              print(demoProducts[index].isFavourite);
                              setState((){
                                demoProducts[index].isFavourite ? demoProducts[index].isFavourite = false: demoProducts[index].isFavourite = true;
                              });
                            },
                            child: Container(
                                width: getProportionateScreenWidth(28),
                                height: getProportionateScreenWidth(28),
                                decoration: BoxDecoration(
                                    color:demoProducts[index].isFavourite? kPrimaryColor.withOpacity(0.15):kSecondaryColor.withOpacity(0.1),
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child:demoProducts[index].isFavourite ? Icon(Icons.favorite_border) : Icon(Icons.favorite , color: Colors.red,)
                                )
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
