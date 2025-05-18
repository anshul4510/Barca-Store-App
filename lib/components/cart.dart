import 'package:ecommerce/components/cartTile.dart';
import 'package:ecommerce/products/product.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<Product> products = sampleProducts;
  @override
  Widget build(BuildContext context) {
    final cartProducts = sampleProducts.where((product) => product.inCart).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(itemCount: cartProducts.length,
          padding: EdgeInsets.symmetric(vertical: 12),
          itemBuilder:(context, index) {
            return Container(
              width: 190,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Carttile(
                prod: cartProducts[index],
              ),
            );
          },),
      ),
    );
  }
}
