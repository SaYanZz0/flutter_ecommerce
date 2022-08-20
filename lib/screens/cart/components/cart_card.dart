import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/cart.dart';
import '../../../size_config.dart';


class CartCard extends StatelessWidget {
  const CartCard({
    Key? key, required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(10)),
      child: Row(
        children: [
          SizedBox(
            width:getProportionateScreenWidth(88) ,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset(cart.product.images[0]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cart.product.title , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text('\$${cart.product.price}' , style: TextStyle(color: kPrimaryColor),),
                    SizedBox(width: getProportionateScreenWidth(10),),
                    Text('x${cart.nbofitems}')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
