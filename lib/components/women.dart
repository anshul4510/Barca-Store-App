import 'package:ecommerce/components/productTile.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';

import 'navbar.dart';
class Women extends StatefulWidget {
  const Women({super.key});

  @override
  State<Women> createState() => _WomenState();
}

class _WomenState extends State<Women> {
  final List<Product> products=sampleProducts;
  @override
  Widget build(BuildContext context) {
    final womensProducts = products.where((p) => p.type.toLowerCase() == 'women').toList();
    return Scaffold(
      appBar: AppBar(
        title:  Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.pink[700],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 25),
            child: Text('WOMEN\'S KITS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                backgroundColor: Colors.pink[700],
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(17),
                    // decoration: BoxDecoration(border: Border.all(
                    //   color: Colors.blue,
                    //   width: 2.0,
                    // )),
                    child: Column(
                      children: [

                        womensProducts.isEmpty
                            ? const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text('No men\'s products available'),
                        ) : GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 0.55,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                          ),
                          itemCount: womensProducts.length,
                          itemBuilder: (context, index) => Product_tile(
                              prod:womensProducts[index],
                              onFavoritePressed:(){
                                setState(() {
                                  womensProducts[index].isFav =
                                  !womensProducts[index].isFav;
                                });
                              }
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
