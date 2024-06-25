import 'package:flutter/material.dart';
class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container( // Fondo compartido para CircleAvatar y Text
          decoration: BoxDecoration(
            color: Color(0xFFBA2D0B), // Color hexadecimal #BA2D0B
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              CircleAvatar( // CircleAvatar de color DeepOrange
                backgroundColor: Colors.deepOrange,
                child: Text('1'),
              ),
              Text(
                'Código Único', // Etiqueta de la sección actual
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Divider(color: Colors.grey)),
        Container( // Fondo compartido para CircleAvatar y Text
          decoration: BoxDecoration(
            color: Color(0xFFFFFF), // Color hexadecimal #FFFFFF
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              CircleAvatar( // CircleAvatar de color DeepOrange
                backgroundColor: Colors.deepOrange,
                child: Text('2'),
              ),
              Text(
                'Datos del Vehiculo', // Etiqueta de la sección actual
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Divider(color: Colors.grey)),
        Container( // Fondo compartido para CircleAvatar y Text
          decoration: BoxDecoration(
            color: Color(0xFFFFFF), // Color hexadecimal #FFFFFF
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              CircleAvatar( // CircleAvatar de color DeepOrange
                backgroundColor: Colors.deepOrange,
                child: Text('3'),
              ),
              Text(
                'Código Único', // Etiqueta de la sección actual
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}