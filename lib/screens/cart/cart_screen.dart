import 'package:flutter/material.dart';
import 'package:shop_app/Components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/cart/components/cart_body.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/size_config.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var totaleprice = 0.0;
    for(int i =0;i <DemoCarts.length;i++){
      totaleprice += DemoCarts[i].product.price * DemoCarts[i].nbofitems;
    } print('Totale Price of Your commands is ${totaleprice}');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text('Your cart' , style: TextStyle(color: Colors.black),),
              Text('${DemoCarts.length} items' , style: Theme.of(context).textTheme.caption,)
            ],
          ),
        ),
      ),
      body: CartBody(),
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(150),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius:20 ,
              color:Color(0xffdadada).withOpacity(0.15)
            )
          ]
        ),
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenWidth(40),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kSecondaryColor.withOpacity(0.1)
                    ),
                    child: Icon(Icons.receipt_long_outlined ,color: kPrimaryColor,),
                  ),
                  Row(
                    children: [
                      Text('Add Voucher code'),
                      Icon(Icons.arrow_forward, color:kSecondaryColor,)
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Total:'),
                      Text('\$${totaleprice.toStringAsFixed(2)}' ,style: TextStyle(color: Colors.black),)
                    ],
                  ),
                  DefaultButton(text: 'Check Out',press: (){},width:getProportionateScreenWidth(180),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
