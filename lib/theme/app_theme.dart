import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.blue,
      //apbar Theme
      appBarTheme: AppBarTheme(color: primary, elevation: 0));
}


/**
 * En Flutter, BuildContext (comúnmente referido como simplemente context) es un objeto que representa la ubicación de un widget dentro del árbol de widgets. Es uno de los conceptos más fundamentales en Flutter.

¿Qué significa context en Flutter?
Es una referencia al árbol de widgets que te permite acceder a otros widgets (como padres o ancestros) y recursos del entorno.

Se pasa a muchos métodos (como build, Navigator, showDialog, etc.) para que puedan interactuar con el árbol de widgets o el sistema.

¿Para qué sirve?
Acceder a widgets ancestros
Puedes usar context para acceder a widgets padres, como Theme, MediaQuery, InheritedWidget, etc.
 */