import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  Categories({
    Key? key,
  }) : super(key: key);
  List<Map<String , dynamic>> categories = [
    {"icon": Icons.flash_on, "text": "Flash Deal"},
    {"icon": Icons.paid_rounded, "text": "Bill"},
    {"icon": Icons.videogame_asset, "text": "Game"},
    {"icon": Icons.card_giftcard, "text": "Daily Gift"},
    {"icon": Icons.shopping_cart_checkout, "text": "More"},
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(categories.length, (index) =>CategorieCard(icon:categories[index]['icon'], press:(){},text: categories[index]['text'],))
      ],
    );
  }
}

class CategorieCard extends StatelessWidget {
  const CategorieCard({
    Key? key, required this.text, required this.icon, required this.press,
  }) : super(key: key);
  final text;
  final icon;
  final press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(45),
        child:Column(
          children: [
            AspectRatio(
              aspectRatio:1,
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xffFFecdf) ,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:Icon(icon , color: Color(0xffECA6A6)) ,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(1),),
            Text(text , textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}