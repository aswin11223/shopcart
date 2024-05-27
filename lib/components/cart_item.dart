import 'package:flutter/material.dart';
import 'package:flutter_shopapp_19/model.dart/cart.dart';
import 'package:flutter_shopapp_19/model.dart/shoe.dart';
import 'package:provider/provider.dart';

class CartList extends StatefulWidget {
  final Shoe shoe;

  CartList({super.key, required this.shoe});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
void removecartitem(){
  Provider.of<Cart>(context,listen: false).removecart(widget.shoe);
}

  @override
  Widget build(BuildContext context) {

    
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(12),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8
        )
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),  // Ensure this path is correct
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(onPressed:removecartitem , icon: Icon(Icons.delete,color: Colors.black,)),
      ),
    );
  }
}
