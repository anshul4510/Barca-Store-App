import 'package:flutter/material.dart';
class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
      child: Column(
        children: [
          Container(
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[500],
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Image(image:AssetImage('assets/barcagold-removebg-preview.png'),width: 100,height: 100,),
                  ],
                )),
          ),
        ],
      )
    );
  }
}
