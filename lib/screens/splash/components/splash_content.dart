import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    Key? key, required this.text, required this.image,

  }) : super(key: key);
  final  text, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text(
            'ACHRILI',
            style: TextStyle(
                fontSize: getProportionateScreenHeight(40),
                color: kPrimaryColor),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
                text , style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
          ),
          Spacer(
            flex: 1,
          ),
          Image.asset(
            image,
            height: getProportionateScreenHeight(300),
            width: getProportionateScreenWidth(236),
          ),
        ],
      ),
    );
  }
}