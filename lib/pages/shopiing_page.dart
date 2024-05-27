import 'package:flutter/material.dart';
import 'package:flutter_shopapp_19/components/shoe_tile.dart';
import 'package:flutter_shopapp_19/model.dart/cart.dart';
import 'package:flutter_shopapp_19/model.dart/shoe.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addtocart(Shoe shoe){
    //add shoe to cart

    Provider.of<Cart>(context,listen: false).addtousercart(shoe);
    //alert the user ,shoe add successfully
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Add item successfully"),
      content: Text("check your cart"),
    ));

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
       Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
            padding: EdgeInsets.all(12.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "search",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "everyone flies..some fly longer than others",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[600]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks🔥",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context,index){
            Shoe shoe=value.shoelist()[index];
      
      
            return ShoeTile(shoe:shoe ,ontap: ()=>addtocart(shoe),);
          }))
        ],
      ),
    );
  }
}
