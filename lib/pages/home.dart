
import 'package:ecommerce/components/shop.dart';
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
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage('assets/fcb-logo1.png'),height: 30,width: 30,),
                SizedBox(width: 7,),
                Text('HEY ANSHUL',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    color:Colors.black,
                  ),),
              ],
            ),
           CircleAvatar(
             radius: 20,
             backgroundImage: AssetImage("assets/user_icon.jpg"),
           ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              // padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // SizedBox(height: 40,),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color(0xFF004D98),Color(0xFFA50044)],
                        begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/fcb-logo1.png'),height: 100,width: 100,),
                          SizedBox(height: 10,),
                          Text('BARCA STORE',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/laliga.webp'),),
                            SizedBox(height:3 ,),
                            Text('LIGA 24/25',
                            style:TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'RobotoCondensed',
                              fontSize: 11,
                            ))
                          ],
                        ),
                        SizedBox(width: 25),
                        Column(
                          children: [
                            CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/ucl.png')),
                            SizedBox(height:3 ,),
                            Text('UCL 24/25',
                                style:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'RobotoCondensed',
                                  fontSize: 11,
                                ))
                          ],
                        ),
                        SizedBox(width: 25),
                        Column(
                          children: [
                            CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/copa.png')),
                            SizedBox(height:3 ,),
                            Text('COPA 24/25',
                                style:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'RobotoCondensed',
                                  fontSize: 11,
                                ))
                          ],
                        ),
                        SizedBox(width: 25),
                        Column(
                          children: [
                            CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/laliga.webp')),
                            SizedBox(height:3 ,),
                            Text('LIGA 23/24',
                                style:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'RobotoCondensed',
                                  fontSize: 11,
                                ))
                          ],
                        ),
                        SizedBox(width: 25),
                        Column(
                          children: [
                            CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/ucl.png')),
                            SizedBox(height:3 ,),
                            Text('UCL 23/24',
                                style:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'RobotoCondensed',
                                  fontSize: 11,
                                ),
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        Column(
                          children: [
                            CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/copa.png')),
                            SizedBox(height:3 ,),
                            Text('COPA 23/24',
                              style:TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'RobotoCondensed',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Shop(),
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}