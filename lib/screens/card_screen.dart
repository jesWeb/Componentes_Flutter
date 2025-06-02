import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
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
          CustomCard1(),
          SizedBox(height: 10,),
          CustomCardType2()
        ],
      ),
    );
  }

}


