import 'package:componentes/widgets/CustomCard1.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        //estsos son los atributos que recibe 
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCard1()
        ],
      ),
    );
  }

}


