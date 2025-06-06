
import 'package:componentes/router/app_router.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App Bar',
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRoutes(),
      onGenerateRoute: AppRouter.onGenerateRoute,
  
      theme: AppTheme.lightTheme
    );
  }
}
