import 'package:drinks_app/cart_screen.dart';
import 'package:drinks_app/models/fruit.dart';
import 'package:drinks_app/widgets/fruits_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const routeName = '/MainScreen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentindex = 0;
  final List<Widget> _children = [];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JuiceUp'),
        actions: [
          CircleAvatar(),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                FruitSelect(
                    image: Image(
                      image: AssetImage('assets/images/peach3.png'),
                      fit: BoxFit.fill,
                    ),
                    title: 'Peach'),
                const SizedBox(
                  width: 15.0,
                ),
                FruitSelect(
                    image: Image(
                      image: AssetImage('assets/images/mango.png'),
                      fit: BoxFit.fill,
                    ),
                    title: 'Mango'),
                const SizedBox(
                  width: 15.0,
                ),
                FruitSelect(
                    image: Image(
                      image: AssetImage('assets/images/grapes.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    title: 'Grapes'),
                const SizedBox(
                  width: 15.0,
                ),
                FruitSelect(
                    image: Image(
                        image: AssetImage('assets/images/apple.jpeg'),
                        fit: BoxFit.fill),
                    title: 'Apple'),
                const SizedBox(
                  width: 15,
                ),
                FruitSelect(
                    image: Image(
                      image: AssetImage('assets/images/avacado.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    title: 'Avacado'),
                const SizedBox(
                  width: 15.0,
                ),
                FruitSelect(
                    image: Image(
                      image: AssetImage('assets/images/banana.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    title: 'Banana'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
            child: Row(
              children: const [
                Text(
                  'Most popular',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 400.0,
            width: 700.0,
            child: ListView.builder(
                itemCount: allFruits.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: allFruits[index].color,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 330.0,
                          width: 350.0,
                          child: allFruits[index].image,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Text(
                                allFruits[index].title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Text(
                                allFruits[index].price.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              const SizedBox(
                                width: 130.0,
                              ),
                              //
                              const Icon(Icons.shopping_cart),
                            ],
                          ),
                        ),
                        //  Expanded(child: allFruits[index].image),
                      ],
                    ),
                  );
                }),
          ),

          // bottomNavigationBar:BottomNavigationBar(

          //   items:const <BottomNavigationBarItem> [

          // BottomNavigationBar(items: [

          // ])
          // Container(
          //   height: 100,
          //   width: 200,
          //   child: BottomNavigationBar(fixedColor: C,),

          // )
          // BottomAppBar(),
          // Icon(Icons.abc_outlined)

          // Row(
          //   children: [
          //     BottomNavigationBar(items: [BottomNavigationBarItem(icon:Icon(Icons.menu))]),
          //   ],
          // )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              if (index == 1) {
                Navigator.pushNamed(context, CartScreen.routeName);
              }
            });
          },
          selectedItemColor: Colors.yellow,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "", icon: Icon(Icons.menu)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(
                label: " ",
                icon: Icon(
                  Icons.plus_one_rounded,
                  color: Colors.amber,
                )),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.query_stats)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.people))
          ]),

      // _children[_currentindex]
    );
  }
}
