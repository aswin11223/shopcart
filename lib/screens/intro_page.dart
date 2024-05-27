import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopapp_19/components/my_button.dart';
import 'package:flutter_shopapp_19/screens/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                'lib/images/nike-logo-png-shoes-brand-17.png',
                height: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Just Do It",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Brand New Sneakers And Custom Kicks Made With Premium Quality',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
SizedBox(height: 10,),

          Mybutton(textt: "Shop Now", ontapp: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          })
        ],
      ),
    );
  }
}
