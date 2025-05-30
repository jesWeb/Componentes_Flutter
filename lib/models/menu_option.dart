import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

//esta es para ver si lo manda en el orden que quier - es como si fueran los props a recibir 

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
