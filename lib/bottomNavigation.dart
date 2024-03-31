
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => navigationIcons();
}

class navigationIcons extends State<bottomNavigation>{

  @override
  Widget build(BuildContext){
    return GNav(
      padding: EdgeInsets.symmetric(horizontal:20 , vertical: 15),
      gap: 6,
      tabs: [
        GButton(
          icon: Icons.home_outlined ,
          text: 'home',
          textColor: Colors.blue,
        ),
        GButton(
          icon: Icons.menu_book_outlined,
          text: 'learn',
          textColor: Colors.blue,
        ),
        GButton(
          icon: Icons.grid_view_outlined,
          text: 'hub',
          textColor: Colors.blue,
        ),
        GButton(
          icon: Icons.chat_rounded,
          text: 'chat',
          textColor: Colors.blue,
        ),
        GButton(
          icon: Icons.account_circle_rounded,
          text: 'profile',
          textColor: Colors.blue,
        ),
      ],
    );
  }
}
