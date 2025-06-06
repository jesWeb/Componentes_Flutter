import 'package:flutter/material.dart';
class Listview1Screen extends StatelessWidget {
  final options = const ['Ferrari', 'Porsche', 'Aston Martin', 'Mercedez'];
  const Listview1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (elelemto) => ListTile(
              title: Text(elelemto),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
