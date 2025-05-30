import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: const Text('Nombre de la ruta'),
            leading: const Icon(Icons.access_time),
            onTap: () {
              //forma de navegacion uno
              // final route = MaterialPageRoute(
              //     builder: (context) => const Listview1Screen());
              // // Navigator.pushReplacement(context, route);
              // Navigator.push(context, route);

            //forma dos 
             Navigator.pushNamed(context,'Listview1');


            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 8,
        ));
  }
}

//navegar entre pantallas 
/**
 * dos formas de navegar 
 * navigator 
 * pushReplacement esteda la opcion de destruir en tre comillas la navegacion por ejemplo en un login aqui ya no podra regresar
 * con el push pude volver 
 */