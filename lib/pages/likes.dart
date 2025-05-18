import 'package:ecommerce/components/LikesComp/likepicks.dart';
import 'package:ecommerce/components/LikesComp/toppicks.dart';
import 'package:flutter/material.dart';
class Likes extends StatefulWidget {
  const Likes({super.key});

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/blau3.jpeg'),fit: BoxFit.cover,),
            ),
            child: Center(
              child: Text('Culers\' Picks',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize:45,
                fontFamily: 'Ubuntu',
              ),),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 30,0),
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFA50044),
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(100),
                      ),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(20,2, 0, 2),
                      child: Text(
                        'Top Picks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Toppicks(),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 30,0),
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF004D98),
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(100),
                      ),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(20,2, 0, 2),
                      child: Text(
                        'Liked By You',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Likepicks(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
