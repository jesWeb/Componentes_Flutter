//este es un route global
import 'package:componentes/models/menu_option.dart';
import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initiaRoute = 'Home';
  //esta es otra forma de crear las rutas pero aqui asiganmos nombre y iconos y rutas
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home screen',
        screen: const HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'Listview1',
        name: 'Lista 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'Listview2',
        name: 'lista 2',
        screen: const Listview2Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'alert',
        name: 'alertas',
        screen: const AlertScreen(),
        icon: Icons.alarm_add_sharp),
    MenuOption(
        route: 'card',
        name: 'cartas',
        screen: const CardScreen(),
        icon: Icons.card_giftcard_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'Home': (BuildContext context) => const HomeScreen(),
    'Listview1': (BuildContext context) => const Listview1Screen(),
    'Listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen()
  };

  // ongeerateRoutes
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => AlertScreen());
  }
}

/**
 * ¿Qué hace onGenerateRoute?
onGenerateRoute se llama cuando se intenta navegar a una ruta que no está definida explícitamente en la propiedad routes del MaterialApp. Esto te da la oportunidad de manejar rutas de forma más flexible y con lógica personalizada.
 * 
 * MaterialApp(
  onGenerateRoute: (RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/detalle':
        return MaterialPageRoute(builder: (context) => DetallePage());
      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  },
);

El objeto settings contiene información sobre la ruta que se está solicitando:

settings.name: el nombre de la ruta (ej. /detalle)

settings.arguments: argumentos opcionales que se pueden pasar al navegar

con argumentos 
Navigator.pushNamed(
  context,
  '/detalle',
  arguments: {'id': 42},
);

// En onGenerateRoute
case '/detalle':
  final args = settings.arguments as Map;
  return MaterialPageRoute(
    builder: (context) => DetallePage(id: args['id']),
  );


 */
