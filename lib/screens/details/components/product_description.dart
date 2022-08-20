import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({Key? key, required this.product}) : super(key: key);
final Product product;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getProportionateScreenHeight(10),),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
          child: Text(widget.product.title, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(17),
              color: Colors.black),),
        ),
        SizedBox(height: getProportionateScreenHeight(8),),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(60),
            decoration: BoxDecoration(
                color: widget.product.isFavourite
                    ? Color(0xfff5f6f9) :Color(0xffffe6e6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40)
                )
            ),
            child: Icon(Icons.favorite,
              color:widget.product.isFavourite ?Color(
                  0xffd8dee4): Colors.red),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10),),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(widget.product.description),
        ),
        SizedBox(height: getProportionateScreenHeight(10),)
      ],
    );
  }
}
