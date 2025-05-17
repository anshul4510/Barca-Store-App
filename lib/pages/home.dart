import 'package:ecommerce/components/men.dart';
import 'package:ecommerce/components/training.dart';
import 'package:ecommerce/components/women.dart';
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
      body: Column(
        children: [
          Expanded(child: Men()),
          Expanded(child: Women()),
          Expanded(child: Training()),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
