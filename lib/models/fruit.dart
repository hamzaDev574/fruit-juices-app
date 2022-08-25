import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Fruit {

  Image image;
  String title;
  double price;
  Color color;
  Icon icon;
  String description;

  Fruit({
    required this.image,
    required this.price,
    required this.title,
    required this.color,
    required this.icon,
    required this.description,
  });
}

List<Fruit> allFruits = [
  Fruit(image:const Image(image: AssetImage('assets/images/peachcan.jpeg') ,fit:BoxFit.fill,), price: 50.0, title: 'Peach Juice', color:Color(0xFFf78c94),icon: Icon(Icons.shopping_cart),description: 'loaded with all the fun'),
  Fruit(image:const Image(image: AssetImage('assets/images/mangocc.jpeg'),fit: BoxFit.fill,), price: 50.0, title: 'Mango Juice',color: Colors.yellow,icon: Icon(Icons.shopping_cart),description: 'loaded with all the fun'),
  Fruit(image:const Image(image: AssetImage('assets/images/grapegg.jpeg'),fit: BoxFit.fill,), price: 50.0, title: 'Grape Juice',color: Colors.purple,icon: Icon(Icons.shopping_cart),description: 'loaded with all the fun'),
  Fruit(image:const Image(image: AssetImage('assets/images/appleaa.jpeg'),fit:BoxFit.fill ,), price: 50.0, title: 'Apple Juice',color: Colors.red,icon: Icon(Icons.shopping_cart),description: 'loaded with all the fun'),
  Fruit(image:const Image(image: AssetImage('assets/images/vv.jpeg'),fit:BoxFit.fill,), price:60.0, title: 'Avacado Juice ', color: Colors.green,icon: Icon(Icons.shopping_cart),description: 'loaded with all the fun'),
  Fruit(image:const Image(image: AssetImage('assets/images/bb.jpeg'),fit:BoxFit.fill,), price: 70.0, title: 'Banana Juice', color: Colors.yellow,icon: Icon(Icons.shopping_cart),description: 'loaded with all the fun')

];