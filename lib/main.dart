//este es un archivo donde creamos las rutas 

import 'package:componentes/router/app_router.dart';
// import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App Bar',
      // home: const CardScreen(),
      //indicar cual es la ruta principal
      initialRoute: AppRouter.initialRoute,
      //dfinir routes de la app
      //forma uno 
      // routes: {
      //   'Home': (BuildContext context) => const HomeScreen(),
      //   'Listview1': (BuildContext context) => const Listview1Screen(),
      //   'Listview2': (BuildContext context) => const Listview2Screen(),
      //    'alert': (BuildContext context) => const AlertScreen(),
      //    'card': (BuildContext context) => const CardScreen()
      // },
      //forma 2
      routes:AppRouter.getAppRoutes() ,
      //ongenerateRoure
      onGenerateRoute: AppRouter.onGenerateRoute,

      //ver para que srive este para regresar las rutas dinamicas y mas para cuando no estan definidas
    );
  }
}
