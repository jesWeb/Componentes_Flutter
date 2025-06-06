// import 'package:componentes/screens/screens.dart';
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
                    Navigator.pushNamed(context, menuOpc[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOpc.length));
  }
}
