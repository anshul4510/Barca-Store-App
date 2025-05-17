import 'package:flutter/material.dart';
class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
      child: Column(
        children: [
          Stack(
            children:[ Container(
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[600],
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                    child: Row(
                      children: [
                        Image(image:AssetImage('assets/barcagold-removebg-preview.png'),width: 100,height: 100,),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('BARCA ONE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Color(0xFF004D98),Color(0xFFA50044)],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(50),
                                  right: Radius.circular(50),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Go Premium',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'RobotoCondensed',
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    SizedBox(width:5,),
                                    Icon(Icons.workspace_premium,color: Colors.white,),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
              Positioned(top:0,right: 0,child: Container(
                height: 18,
                width: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xFFFFA000),Color(0xFFFF6D00)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Get 50% Off + Extra Perks!',style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ],
      )
    );
  }
}
