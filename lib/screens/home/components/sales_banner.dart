import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SalesBanner extends StatelessWidget {
  const SalesBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      height: SizeConfig.screenHeight * 0.1,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15)
      ),
      child:Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20) , vertical: getProportionateScreenHeight(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A Summer Surprise' , style: TextStyle(color: Colors.white), textAlign: TextAlign.start,),
            Text('Cashback 20%' , style: TextStyle(color: Colors.white , fontSize:getProportionateScreenWidth(20) , fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
