import 'package:ecommerce/components/homeComp/memorabilia.dart';
import 'package:ecommerce/components/homeComp/menad.dart';
import 'package:ecommerce/components/homeComp/shop.dart';
import 'package:ecommerce/components/homeComp/trainingad.dart';
import 'package:ecommerce/components/homeComp/womenad.dart';
import 'package:ecommerce/pages/likes.dart';
import 'package:ecommerce/pages/profile.dart';
import 'package:ecommerce/pages/search.dart';
import 'package:ecommerce/products/product.dart';
import 'package:ecommerce/products/sample_product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/navbar.dart';

class Homenav extends StatefulWidget {
  const Homenav({super.key});

  @override
  State<Homenav> createState() => _HomenavState();
}

class _HomenavState extends State<Homenav> {
  int _selectedIndex = 0;

  final List<Widget> _pages =  [
    Home(),
    Likes(),
    Search(),
    Profile(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  PreferredSizeWidget? get _buildAppBar {
    if (_selectedIndex == 0) {
      return AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Image(
                  image: AssetImage('assets/fcb-logo1.png'),
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 7),
                const Text(
                  'HEY ANSHUL',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(onPressed:() async{
                  dynamic result=await Navigator.pushNamed(context,'/cart');},
                  mini: true,
                  elevation: 4.0,
                  tooltip: 'Go to Cart',
                  backgroundColor: Colors.blue[800],
                  foregroundColor: Colors.white,
                  child: Icon(Icons.shopping_cart),
                  shape: RoundedRectangleBorder(// Custom shape (optional)
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                const SizedBox(width: 7),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/user_icon.jpg"),
                ),
              ],
            ),
          ],
        ),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Navbar(
        currentIndex: _selectedIndex,
        onTabChange: _navigateBottomBar,
      ),
    );
  }
}
class Home extends StatelessWidget {
  final List<Product> products = sampleProducts;
  @override
  final cartProducts = sampleProducts.where((product) => product.inCart).toList();
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF004D98), Color(0xFFA50044)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/fcb-logo1.png'),
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'BARÇA STORE',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Memorabilia(),
          const SizedBox(height: 30),
          const Shop(),
          const SizedBox(height: 30),
          const Menad(),
          const SizedBox(height: 3),
          const Trainingad(),
          const SizedBox(height: 3),
          const Womenad(),
          const SizedBox(height: 3),
        ],
      ),
    );
  }
}
