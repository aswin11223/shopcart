import 'package:flutter/material.dart';
import 'package:flutter_shopapp_19/components/cart_item.dart';
import 'package:flutter_shopapp_19/model.dart/cart.dart';
import 'package:flutter_shopapp_19/model.dart/shoe.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My Cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: value.getusercart().length,
              itemBuilder: (context, index) {
                Shoe individualItem = value.getusercart()[index];
                return CartList(shoe: individualItem);
              },
              
            ),
          ),
        ],
      ),
    );
  }
}
