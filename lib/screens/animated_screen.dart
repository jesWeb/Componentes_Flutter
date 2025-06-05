import 'dart:math';

import 'package:flutter/material.dart';

//este permitira rabajar con sus propiedades
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double wid = 50;
  double hei = 50;
  Color color = Colors.lightBlueAccent;
  BorderRadiusGeometry radio = BorderRadius.circular(10);

  void onChange() {
    final random = Random();
    wid += random.nextInt(200).toDouble() + 30;
    hei += random.nextInt(200).toDouble() + 30;
    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    radio = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animacion Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOutBack,
          width: wid,
          height: hei,
          decoration: BoxDecoration(color: color, borderRadius: radio),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.play_circle_fill_outlined,
            size: 35,
          ),
          onPressed: () {
            onChange();
          }),
    );
  }
}
