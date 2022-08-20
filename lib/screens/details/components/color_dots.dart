import 'package:flutter/material.dart';

import '../../../Components/rounded_icon_button.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';


class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key, required this.product,

  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedcolor = 3;
    return Row(
      children: [
        ...List.generate(product.colors.length, (index) => ColorDot(color:product.colors[index] , isSelected: selectedcolor==index,)),
        Spacer(),
        RoundedIconBtn(icon:Icons.remove, press:(){}, color: Colors.black,),
        SizedBox(width: getProportionateScreenWidth(10),),
        RoundedIconBtn(icon:Icons.add, press:(){}, color: Colors.black,)
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key, required this.color,  this.isSelected = false,

  }) : super(key: key);

  final color , isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(getProportionateScreenWidth(5)),
      width: getProportionateScreenWidth(35),
      height: getProportionateScreenWidth(35),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? kPrimaryColor:Colors.transparent)
      ),
      child: DecoratedBox(
          decoration:BoxDecoration(
              color:color,
              shape: BoxShape.circle
          )
      ),
    );
  }
}
