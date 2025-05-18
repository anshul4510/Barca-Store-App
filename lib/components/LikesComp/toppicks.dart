import 'package:ecommerce/components/productTile.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:ecommerce/products/product.dart';

class Toppicks extends StatefulWidget {
  const Toppicks({super.key});

  @override
  State<Toppicks> createState() => _ToppicksState();
}

class _ToppicksState extends State<Toppicks> {
  final List<Product> products = sampleProducts;

  @override
  Widget build(BuildContext context) {
    final topProducts = products.where((p) => p.categories.any((c) => c.toLowerCase() == 'top')).toList();

    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topProducts.length,
        itemBuilder: (context, index) {
          return Container(
            width: 190,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Product_tile(
              prod: topProducts[index],
              onFavoritePressed: () {
                setState(() {
                  topProducts[index].isFav = !topProducts[index].isFav;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
