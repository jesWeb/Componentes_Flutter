import 'package:flutter/material.dart';

/**en este apartado cremoas una vista para las listas 
 * donde ponemos un listview
 * los listtiles son los elelemntos de las listas 
 * 
 */

class Listview1Screen extends StatelessWidget {
  final options = const ['Ferrari', 'Porsche', 'Aston Martin', 'Mercedez'];

  //constructor  de la clase 
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Tipo 1'),
      ),
      body: ListView(
        children: [
          /**trare eun lstados de un array usamos el operador ... spread para acceder a los elementos y el map para acceder a ellos como en react pero aqui agergamos una funcion e para mostarlos  */
          ...options.map(
            (elelemto) => ListTile(
              // leading: Icon(Icons.insert_chart_outlined_sharp),
              title: Text(elelemto),
              //este da btn de lado derecho 
              trailing: const Icon(Icons.arrow_circle_right_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
