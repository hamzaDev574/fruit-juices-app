import 'package:drinks_app/cart_screen.dart';
import 'package:drinks_app/mainscreen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),

      initialRoute: MainScreen.routeName,
      routes: {
      MainScreen.routeName : (context) => const MainScreen(),
      CartScreen.routeName:(context) => const CartScreen(),
      
      }
    );
  }}