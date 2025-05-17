import 'package:flutter/material.dart';
class Memorabilia extends StatelessWidget {
  const Memorabilia({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
