import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final text;
  final press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text , style: TextStyle(color: Colors.black , fontSize: getProportionateScreenWidth(15)),),
        TextButton(onPressed: press, child: Text('See more' , style: TextStyle(color: Colors.grey),))
      ],
    );
  }
}