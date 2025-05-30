// import 'package:componentes/screens/screens.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOpc = AppRouter.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(menuOpc[i].name),
                  leading: Icon(menuOpc[i].icon, color: Theme.of(context).primaryColor),
                  onTap: () {
                    //forma de navegacion uno
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());
                    // // Navigator.pushReplacement(context, route);
                    // Navigator.push(context, route);

                    //forma dos
                    // Navigator.pushNamed(context,'home');
                    Navigator.pushNamed(context, menuOpc[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOpc.length));
  }
}

//navegar entre pantallas 
/**
 * dos formas de navegar 
 * navigator 
 * pushReplacement esteda la opcion de destruir en tre comillas la navegacion por ejemplo en un login aqui ya no podra regresar
 * con el push pude volver 
 */