import 'package:flutter/material.dart';
import 'package:ecommerce/components/navbar.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Center(
                    child:CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/user_icon.jpg"),
                      // backgroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                        'ANSHUL PATEL',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 14),
                      child: Text('Culer',
                      style: TextStyle(
                        fontSize: 14,
                                       backgroundColor: Colors.blue[900],
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('SETTINGS',
                      style: TextStyle(
                        color: Colors.grey[500],
                      fontFamily: 'Ubuntu',
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 500,
                    height: 45,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person,
                                 color: Colors.black,
                                ),
                                SizedBox(width: 20,),
                                Text('Personal Information',
                                  style:TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward,
                              color: Colors.black,),
                          ],
                        )),
                  ),
                  SizedBox(height: 3,),
                  SizedBox(
                    width: 500,
                    height: 45,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.notifications,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 20,),
                                Text('Notifications Settings',
                                  style:TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward,
                              color: Colors.black,),
                          ],
                        )),
                  ),
                  SizedBox(height: 3,),
                  SizedBox(
                    width: 500,
                    height: 45,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.cookie,
                                  color: Colors.black,

                                ),
                                SizedBox(width: 20,),
                                Text('Cookie Settings',
                                  style:TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward,
                              color: Colors.black,),
                          ],
                        )),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('LEGAL',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: 'Ubuntu',
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 500,
                    height: 45,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.lock,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 20,),
                                Text('Privacy Policy',
                                  style:TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward,
                              color: Colors.black,),
                          ],
                        )),
                  ),
                  SizedBox(height: 3,),
                  SizedBox(
                    width: 500,
                    height: 45,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.safety_check,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 20,),
                                Text('Legal Terms',
                                  style:TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward,
                              color: Colors.black,),
                          ],
                        )),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child:TextButton(onPressed: (){},
                        child: Text('Log Out',
                    style:TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight:FontWeight.w400,
                    )))
                  ),
                  Center(
                      child:TextButton(onPressed: (){},
                          child: Text('Delete Account',
                              style:TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.grey[700],
                                decorationThickness: 0.8,
                                fontSize: 15,
                                color: Colors.grey[700],
                                fontWeight:FontWeight.w400,
                              )))
                  ),
                  Center(
                      child:TextButton(onPressed: (){},
                          child: Text('© Anshul Patel 2025',
                              style:TextStyle(
                                fontSize: 13,
                                color: Colors.grey[700],
                                fontWeight:FontWeight.w400,
                              )))
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
