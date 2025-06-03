import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  //recuerda que el builder va a retornar un
  // widget
  //en este caso sera el alertDialog  ///
  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: Text('Soy un Titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 80,
                )
              ],
            ),
            actions: [
              TextButton(
               onPressed: () => Navigator.pop(context),
               child: const Text('Cerrar')
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.indigo[700],
          //     shape: const StadiumBorder(),
          //     elevation: 0),
          child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Mostrar Alerta',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          onPressed: () => displayDialog(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 32, 17, 195),
        child: const Icon(Icons.close, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
