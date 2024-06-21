import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto-Matic'),
          actions: [
            IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
                // Lógica para cancelar
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Apellidos'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Correo Electrónico'),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Contraseña'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para continuar
                },
                child: Text('Continuar'),
              ),
              SizedBox(height: 40),
              Text('Accede con'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('Redes Sociales')),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                    child: Center(child: Text('Google')),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Nombre de la empresa'),
            ],
          ),
        ),
      ),
    );
  }
}
