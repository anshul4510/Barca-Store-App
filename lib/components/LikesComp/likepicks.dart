import 'package:ecommerce/components/productTile.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:ecommerce/products/product.dart';

class Likepicks extends StatefulWidget {
  const Likepicks({super.key});

  @override
  State<Likepicks> createState() => _LikepicksState();
}

class _LikepicksState extends State<Likepicks> {
  final List<Product> products = sampleProducts;

  @override
  Widget build(BuildContext context) {
    final likedProducts = sampleProducts.where((product) => product.isFav).toList();

    return likedProducts.isEmpty
        ? SizedBox(
      height: 180,
          child: const Center(
                child: Text(
          'No Favorites Yet',
          style: TextStyle(fontSize: 16,color: Colors.grey,fontFamily: 'Ubuntu'),
                ),
              ),
        )
        :SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: likedProducts.length,
        itemBuilder: (context, index) {
          return Container(
            width: 190,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Product_tile(
              prod: likedProducts[index],
              onAddToCart: (){
                setState(() {
                  likedProducts[index].inCart = !likedProducts[index].inCart;
                });
              },
              onFavoritePressed: () {
                setState(() {
                  likedProducts[index].isFav = !likedProducts[index].isFav;
                });
              },
                onLikeRemoved:(){
                  setState(() {
                  });
                }
            ),
          );
        },
      ),
    );
  }
}
