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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF004D98), Color(0xFFA50044)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 25),
            child: Text('BLAUGRANA BASKET',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:(cartProducts.length>0)?ListView.builder(itemCount: cartProducts.length,
          padding: EdgeInsets.symmetric(vertical: 12),
          itemBuilder:(context, index) {
            return Container(
              width: 190,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Carttile(
                prod: cartProducts[index],
                onRemove: () {
                  setState(() {});
                },
              ),
            );
          },):Center(
            child: Text('          No goals here yet... \nYour Blaugrana basket is empty!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),),
          ),
      ),
      bottomNavigationBar: (cartProducts.length>0)?Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey[100],
        child: Row(children: [
          SizedBox(width: 20,),
          Container(width: 180,
          child: Text('You\'re One Tap Away from Glory!',maxLines: 2,overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoCondensed',
              fontSize: 16,
            ),
          )),
          Container(
            width: 180,
            child: ElevatedButton(onPressed: (){},

                style:ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB8860B),
                  elevation: 2,
                ),
                child:Text('Place Order',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),)),
          )
        ],),
      ):SizedBox.shrink(),
    );
  }
}
