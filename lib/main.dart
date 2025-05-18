import 'package:ecommerce/components/cart.dart';
import 'package:ecommerce/components/men.dart';
import 'package:ecommerce/components/productTile.dart';
import 'package:ecommerce/components/training.dart';
import 'package:ecommerce/components/women.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/profile.dart';
import 'package:ecommerce/pages/likes.dart';
import 'dart:async';
import 'package:ecommerce/pages/search.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Loading(),
    routes: {
      '/home': (context) => Home(),
      '/men': (context) => Men(),
      '/women': (context) => Women(),
      '/training':(context)=>Training(),
      '/profile':(context)=>Profile(),
      '/search':(context)=>Search(),
      '/likes':(context)=>Likes(),
      '/cart':(context)=>Cart(),
    },
  ));
}
class Loading extends StatefulWidget {
  const Loading({super.key});
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homenav()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          'assets/loading.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
