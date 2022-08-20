import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedimage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          height: getProportionateScreenHeight(230),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedimage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) =>
                BuildSmallPreview(index: index))
          ],
        ),
      ]
      ,
    );
  }

  BuildSmallPreview({required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedimage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedimage == index ? kPrimaryColor : Colors
                    .transparent)
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}