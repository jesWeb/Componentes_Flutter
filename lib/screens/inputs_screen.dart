import 'package:flutter/material.dart';

import '../widgets/Custom_InputFrom.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myformKey = GlobalKey<FormState>();
    final Map<String, String> formVal = {
      'nombre': 'jesus',
      'apellido': 'Gutierrez',
      'email': 'nalita@gmail.com',
      'password': '123',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Formulario',
          style: TextStyle(color: Colors.white),
        ),
      ),
      //este widget permite hacer ecroll
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myformKey,
            child: Column(children: [
              inputText(
                labelText: 'Nombre',
                hintText: 'Nombre',
                formProperty: 'nombre',
                formValues: formVal,
              ),
              SizedBox(
                height: 30,
              ),
              inputText(
                labelText: 'Apellido',
                hintText: 'apellidos',
                formProperty: 'apellido',
                formValues: formVal,
              ),
              SizedBox(
                height: 30,
              ),
              inputText(
                labelText: 'email',
                hintText: '@correo',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formVal,
              ),
              SizedBox(
                height: 30,
              ),
              inputText(
                labelText: 'password',
                hintText: 'password',
                obscureText: true,
                formProperty: 'password',
                formValues: formVal,
              ),
              SizedBox(
                height: 30,
              ),

              DropdownButtonFormField<String>(
                  value: 'admin',
                  items: [
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('admin'),
                    ),
                    DropdownMenuItem(
                      value: 'superuser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr.Developer',
                      child: Text('Jr.Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formVal['role'] = value ?? 'admin';
                  }),
              SizedBox(
                height: 30,
              ),
              //btn-send
              ElevatedButton(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Center(
                      child: Text(
                        'Guardar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myformKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                    print(formVal);
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
