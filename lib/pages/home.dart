import 'package:flutter/material.dart';
import 'package:ecommerce/components/navbar.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E Commerce App'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(

              ), // Your scrollable content
            ),
          ),
          // Navbar will stay below the scrollable content
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
