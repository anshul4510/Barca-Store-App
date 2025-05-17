import 'package:flutter/material.dart';
class Menad extends StatelessWidget {
  const Menad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0,0,15,0),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFC04C7C),Color(0xFFA50044)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(100),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
            child: Column(
              children: [
                Text(' Barça Men’s Kit\n Collection',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
                SizedBox(height:15),
                OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      backgroundColor:Colors.blue[600],
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                      child: Row(
                        children: [
                          Text('Explore',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                          SizedBox(width:10),
                          Icon(Icons.shopping_bag,color: Colors.white,)
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(width: 30,),
          Image(image: AssetImage('assets/men.png'),width: 150,height: 150,)
        ],
      ),
    );
  }
}
