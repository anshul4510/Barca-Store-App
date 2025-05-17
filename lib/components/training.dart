import 'package:ecommerce/components/productTile.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';

import 'navbar.dart';
class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  final List<Product> products=sampleProducts;
  @override
  Widget build(BuildContext context) {
    final TrainingProducts = products.where((p) => p.type.toLowerCase() == 'training').toList();
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.purple[800],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 25),
            child: Text('TRAINING KITS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                backgroundColor: Colors.purple[800],
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

                        TrainingProducts.isEmpty
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
                          itemCount: TrainingProducts.length,
                          itemBuilder: (context, index) => Product_tile(
                              prod:TrainingProducts[index],
                              onFavoritePressed:(){
                                setState(() {
                                  TrainingProducts[index].isFav =
                                  !TrainingProducts[index].isFav;
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
