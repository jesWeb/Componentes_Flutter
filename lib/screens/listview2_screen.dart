import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'megamente',
    'metal gear',
    'superSmash',
    'Mario',
    'Batman'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Litsa Tipo 2'),
        //sombra
        // elevation: 0,
        // backgroundColor: Colors.red,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          //este da btn de lado derecho
          trailing: const Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.black,
          ),
          //
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

/**nOTA EL separator separeted 
 * lleva esta  separatorBuilder: (_, __) => const Divider(), linea 
 * y los _ o __ son eleemento quw queremos que devuelva y en este caso este va a colocar 
 * una separacio 
 * 
 * 
 * y en el builder no lleva esa separacion
 * 
 */
