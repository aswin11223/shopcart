import 'package:flutter/material.dart';
import 'package:flutter_shopapp_19/model.dart/cart.dart';
import 'package:flutter_shopapp_19/model.dart/shoe.dart';
import 'package:provider/provider.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()?ontap;
   ShoeTile({super.key,required this.shoe,required this.ontap});
   

  @override
  Widget build(BuildContext context) {
    return Container(
      
   margin: EdgeInsets.only(left: 25),
   width: 250,
   
   decoration: BoxDecoration(
     
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(15)),
   child: Column(
    children: [
      //shoe image
      Image.asset(shoe.imagepath),
      SizedBox(height: 20,),
      Text(shoe.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25),),
      Text(shoe.description,style: TextStyle(fontWeight: FontWeight.bold),),
      Text(shoe.price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      GestureDetector(
        onTap: ontap,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Icon(Icons.add,color: Colors.white,),
        ),
      )


    ],
   ),
    );
  }
}