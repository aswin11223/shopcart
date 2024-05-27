import 'package:flutter/material.dart';
import 'package:flutter_shopapp_19/model.dart/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeshop = [
    //list of shoe for sale
    Shoe(
        imagepath: "lib/images/115-1157601_jordans-png4.png",
        name: "Zoom freak",
        price: "500",
        description:
            "the forward- thinking design of his latest signature shoe"),
            Shoe(
        imagepath: "lib/images/shoes-doodle-art-with-white-background_799298-116.jpg",
        name: "Zoom freak",
        price: "500",
        description:
            "the forward- thinking design of his latest signature shoe"),
            Shoe(
        imagepath: "lib/images/Air-Jordan-Transparent-Background3.png",
        name: "Zoom freak",
        price: "500",
        description:
            "the forward- thinking design of his latest signature shoe"),
            Shoe(
        imagepath: "lib/images/Air-Jordan-PNG-Isolated-2.png",
        name: "Zoom freak",
        price: "500",
        description:
            "the forward- thinking design of his latest signature shoe"),
            Shoe(
        imagepath: "lib/images/115-1157601_jordans-png4.png",
        name: "Zoom freak",
        price: "500",
        description:
            "the forward- thinking design of his latest signature shoe")
  ];
  //list of item in user cart
  List<Shoe>usercart=[];
  //get list of shoes for sale
  List<Shoe>shoelist(){
    return shoeshop;
  }
  //get user cart
  List<Shoe>getusercart(){
    return usercart;
  }
  //addd item to the  cart
   void  addtousercart(Shoe shoe){
   usercart.add(shoe);
   notifyListeners();
  }
  //remove item from the cart
  void removecart(Shoe shoe){
    usercart.remove(shoe);
    notifyListeners();
  }

}
