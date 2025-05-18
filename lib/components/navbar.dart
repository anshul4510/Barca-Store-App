import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Navbar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTabChange;

  const Navbar({
    super.key,
    required this.currentIndex,
    required this.onTabChange,
  });

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GNav(
        selectedIndex: widget.currentIndex,
        onTabChange: widget.onTabChange, // <- this updates selected tab correctly
        rippleColor: Colors.grey[100]!,
        hoverColor: Colors.grey[100]!,
        haptic: true,
        tabBorderRadius: 35,
        tabShadow: [BoxShadow(color: Colors.grey[200]!.withOpacity(0.5))],
        curve: Curves.easeOutExpo,
        duration: const Duration(milliseconds: 500),
        gap: 8,
        color: Colors.black,
        activeColor: Colors.black,
        iconSize: 19,
        tabBackgroundColor: Colors.black54.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        tabMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        tabs: const [
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
          ),
        ],
      ),
    );
  }
}
