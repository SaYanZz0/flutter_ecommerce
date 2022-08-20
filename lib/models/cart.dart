
import 'package:shop_app/models/product.dart';

class Cart {
  final Product product;
  final int nbofitems;

  Cart({required this.product, required this.nbofitems}) {}
}
  // Demo Data for our Cart

List<Cart> DemoCarts =[
  Cart(product: demoProducts[0], nbofitems: 2),
  Cart(product: demoProducts[1], nbofitems: 1),
  Cart(product: demoProducts[2], nbofitems: 1)
];