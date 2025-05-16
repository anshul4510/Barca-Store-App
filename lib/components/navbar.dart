import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: GNav(

            rippleColor: Colors.grey[800]!, // tab button ripple color when pressed
            hoverColor: Colors.grey[700]!, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 35,
             // tab button borderr
            tabShadow: [BoxShadow(color: Colors.grey[800]!.withOpacity(0.5))], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 500), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.white, // unselected icon color
            backgroundColor: Colors.black,
            activeColor: Colors.white, // selected icon and text color
            iconSize: 19, // tab button icon size
            tabBackgroundColor: Colors.black54.withOpacity(0.1), // selected tab background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            tabMargin: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'Likes',
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              )
            ]
        ),
      );
  }
}
