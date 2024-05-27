import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  void Function(int)onTap;
  int currentindex;
   BottomNav({super.key,required this.onTap,required this.currentindex});

  @override
  Widget build(BuildContext context) {
    return  CurvedNavigationBar(items: [
      
      Icon(Icons.home,color: Colors.white,),
      Icon(Icons.shop,color: Colors.white,)
    ],
    backgroundColor: Colors.deepPurple,
    color: Colors.deepPurple.shade200,
    onTap: onTap,
    index:currentindex ,
    );

  }
}