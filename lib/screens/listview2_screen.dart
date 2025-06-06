import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'megamente',
    'metal gear',
    'superSmash',
    'Mario',
    'Batman'
  ];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Litsa Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.black,
          ),
          onTap: () {
            final game = options[i];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}

