import 'package:drinks_app/models/fruit.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const routeName = '/CartScreen';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Cart Screen')),
      body: Column(
        children: [
          SizedBox(
            height: 670,
            width: 500,
            child: ListView.builder(
                itemCount: allFruits.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 0.5),
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.800,
                    child: Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.500,
                          child: allFruits[index].image,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          // decoration: BoxDecoration(
                          //   color: Colors.red,
                          // ),
                         ),
                         Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  (
                                     Text(
                                      allFruits[index].title.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    allFruits[index].description.toString(),
                                    style: const TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    allFruits[index].price.toString(),
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.add_circle_outline),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('1'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.remove_circle_outline),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
