import 'package:flutter/material.dart';
import 'package:flutter_shopapp_19/model.dart/cart.dart';
import 'package:flutter_shopapp_19/screens/intro_page.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Cart(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
       home: IntroPage(),),
      
    );
}
}