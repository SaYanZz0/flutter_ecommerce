import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import '../../../size_config.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    Key? key, required this.icon, required this.numbitems, required this.press,
  }) : super(key: key);
  final icon;
  final press;
  final  numbitems;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:press,
      child: Stack(
          clipBehavior: Clip.none,
          children:[
            Container(
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle
              ),
              width: getProportionateScreenWidth(40),
              height: getProportionateScreenWidth(40),
              child:Center(child: icon,),
            ),
            if(numbitems != 0)
              Positioned(
                  top: -3,
                  right:0 ,
                  child: Container(
                    width: getProportionateScreenWidth(16),
                    height: getProportionateScreenHeight(16),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                    ),
                    child: Center(child: Text('$numbitems' , style: TextStyle(color: Colors.white , fontSize: getProportionateScreenWidth(10), height: 1 , fontWeight: FontWeight.w600),)),
                  )
              )
          ]
      ),
    );
  }
}