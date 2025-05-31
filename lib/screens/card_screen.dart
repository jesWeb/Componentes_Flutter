import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widgeth'),
      ),
      body: ListView(
        //estsos son los atributos que recibe 
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  //atributos 
                  leading: Icon(Icons.photo, color: AppTheme.primary,),
                  title: Text('Soy un titulo'),
                  subtitle:Text('Fugiat consectetur dolor irure laboris. Aliquip nulla nisi aliquip eu. Velit ut irure aute esse eiusmod magna. Esse incididunt aliquip est qui velit. Nisi reprehenderit Lorem do tempor eu consequat laborum velit aliqua est dolore adipisicing exercitation minim. Velit ea culpa elit mollit nostrud tempor proident aliqua magna veniam. Lorem ad eiusmod ipsum cillum culpa.') ,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
