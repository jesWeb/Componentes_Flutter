import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            //atributos
            leading: Icon(
              Icons.photo,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Fugiat consectetur dolor irure.velit aliqua est dolore adipisicing exercitation minim. Velit ea culpa elit mollit nostrud tempor proident aliqua magna veniam. Lorem ad eiusmod ipsum cillum culpa.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                  
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
