//este es un route global
import 'package:componentes/models/menu_option.dart';
import 'package:componentes/screens/inputs_screen.dart';
import 'package:componentes/screens/listview_builder_screen.dart';
import 'package:componentes/screens/screens.dart';
import 'package:componentes/screens/slider_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'home';
  //esta es otra forma de crear las rutas pero aqui asiganmos nombre y iconos y rutas
  static final menuOptions = <MenuOption>[
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
        icon: Icons.card_giftcard_outlined),
    MenuOption(
        route: 'avatar',
        name: 'avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle),
    MenuOption(
        route: 'animacion',
        name: 'animacion',
        screen: const AnimatedScreen(),
        icon: Icons.sick),
    MenuOption(
        route: 'inputs',
        name: 'formulario',
        screen: const InputScreen(),
        icon: Icons.foggy),
    MenuOption(
        route: 'Slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.movie),
    MenuOption(
        route: 'Listview',
        name: 'infinite-scroll',
        screen: const ListviewBuilderScreen(),
        icon: Icons.data_saver_off_sharp),
  ];

  //metodo de mapeo de rutas, up
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  // ongeerateRoutes
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => AlertScreen());
  }
}
