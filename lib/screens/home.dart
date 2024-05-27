import 'package:flutter/material.dart';

import 'package:flutter_shopapp_19/components/bottom_nav.dart';
import 'package:flutter_shopapp_19/pages/cart.dart';
import 'package:flutter_shopapp_19/pages/shopiing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;

  void getcurrent(int index) {
    // Ensure the index is within the valid range before updating selectedindex
    if (index >= 0 && index < pages.length) {
      setState(() {
        selectedindex = index;
        print(selectedindex);
      });
    } else {
      print('Invalid index: $index');
    }
  }

  List<Widget> pages = [
    Shop(),
    Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
          BottomNav(onTap: getcurrent, currentindex: selectedindex),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu,color: Colors.black,),
              color: Colors.transparent,
            );
          }
        ),
      ),
      body: pages[selectedindex],
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            //logo
             Padding(
              padding: EdgeInsets.all(60),
              
               child: Image.asset('lib/images/nike-logo-png-shoes-brand-17.png',color: Colors.white,
               height: 150,
                           ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,size: 35,),
                title: Text("Home",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
               ),
             ),
               const Padding(
               padding: EdgeInsets.all(8.0),
               child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,size: 35,),
                title: Text("Info",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
               ),
             )

          ],
        ),
      ),
    );
  }
}
