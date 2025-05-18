import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:ecommerce/components/productTile.dart';
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController=TextEditingController();
  final List<Product> allProducts=sampleProducts;
  late List<Product> filteredProducts=sampleProducts;
  void _search(String query){
    setState(() {
      filteredProducts = allProducts
          .where((product) =>
      product.name.toLowerCase().contains(query.toLowerCase()) ||
          product.categories.any((cat) => cat.toLowerCase().contains(query.toLowerCase())))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF004D98), Color(0xFFA50044)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(80),),
                ),
              ),
              Positioned(top: 50,left: 45,right:0,child: Text('BARÇAAAA!'
                ,style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontFamily: 'RobotoCondensed',
                  fontStyle: FontStyle.italic,
                ),)),
              Positioned(bottom: 0,left: 0,right: 0,child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 35),
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 50,
                    color: Colors.grey[500]!,
                  ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _searchController,
                    onChanged: _search,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.black
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          _search(_searchController.text);
                        },
                      ),
                    ),
                  ),
                ),
              ))
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child: _searchController.text.isEmpty
                ? Center(
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  'assets/barcamono.png',
                  width: 300,
                  height: 300,
                ),
              ),
            )
                : filteredProducts.isEmpty
                ? const Center(
              child: Text(
                'No products found.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
                :
            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.55,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) => Product_tile(
                prod: filteredProducts[index],
                onFavoritePressed: () {
                  setState(() {
                    filteredProducts[index].isFav =
                    !filteredProducts[index].isFav;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
