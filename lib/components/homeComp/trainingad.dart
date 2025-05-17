import 'package:flutter/material.dart';
class Trainingad extends StatelessWidget {
  const Trainingad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15,0,0,0),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF800080),Color(0xFF993399)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(100),
        ),
      ),
      child: Row(
        children: [
          Image(image: AssetImage('assets/training.png'),width: 150,height: 150,),
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 30, 0),
            child: Column(
              children: [
                Text('Barça Training \nKit Collection',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),),
                SizedBox(height:15),
                OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      backgroundColor:Colors.black,
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
        ],
      ),
    );
  }
}
