import 'package:flutter/material.dart';

class FruitSelect extends StatefulWidget {
  FruitSelect({Key? key, required this.image, required this.title})
      : super(key: key);

  Image image;
  String title;

  @override
  State<FruitSelect> createState() => _FruitSelectState();
}

class _FruitSelectState extends State<FruitSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            
            
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(30),
              child: widget.image),
          ),
        ),
        Text(widget.title),

  ],
    );
  }
}
