import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/size_config.dart';
import 'cart_card.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20) , vertical: getProportionateScreenHeight(20)),
      child: ListView.builder(
        itemCount: DemoCarts.length,
        scrollDirection: Axis.vertical,
          itemBuilder:(BuildContext context , int index){
          return Dismissible(
              key: Key(DemoCarts[index].product.id.toString()),
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Icon(Icons.restore_from_trash_outlined)
                  ],
                ),
              ),
              child: CartCard(cart:DemoCarts[index]
              )
          );
          }
      ),
    );
  }
}