import 'package:ecommerce/components/productTile.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';
class Men extends StatefulWidget {
  const Men({super.key});

  @override
  State<Men> createState() => _MenState();
}

class _MenState extends State<Men> {
  final List<Product> products=sampleProducts;
  @override
  Widget build(BuildContext context) {
    final mensProducts = products.where((p) => p.type.toLowerCase() == 'men').toList();
    return Scaffold(
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
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 25),
                            child: Text('MEN\'S KITS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                backgroundColor: Colors.blue[900],
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                        ),
                        mensProducts.isEmpty
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
                          itemCount: mensProducts.length,
                          itemBuilder: (context, index) => Product_tile(
                              prod:mensProducts[index],
                              onFavoritePressed:(){
                                setState(() {
                                  mensProducts[index].isFav =
                                  !mensProducts[index].isFav;
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
    );
  }
}
