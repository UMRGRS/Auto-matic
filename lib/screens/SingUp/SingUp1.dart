import 'package:auto_matic/config/config.dart';

class Singup1 extends StatelessWidget {
  const Singup1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Config.firstColor, // Fondo blanco
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Alinear al principio
        crossAxisAlignment: CrossAxisAlignment.start, // Alinear a la izquierda
        children: [
          Align( // Alinear el TextField a la esquina superior izquierda
            alignment: Alignment.topLeft,
            child: ConstrainedBox( // Limitar el ancho del TextField
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Introduce el código único del producto',
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón "Continuar"
            },
            child: Text('Continuar', style: TextStyle(color: Config.firstColor)), // Letra blanca
            style: ElevatedButton.styleFrom(
              backgroundColor: Config.secondColor, // Color hexadecimal #208454
            ),
          ),
          SizedBox(height: 32.0),
          TimelineWidget(), // Línea de tiempo
          SizedBox(height: 16.0),

          SizedBox(height: 16.0),
          Text('Nombre de la empresa'), // Nombre de la empresa
        ],
      ),
    );
  }
}


class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container( // Fondo compartido para CircleAvatar y Text
          decoration: BoxDecoration(
            color: Config.fifthColor, // Color hexadecimal #BA2D0B
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
                  color: Config.firstColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Divider(color: Colors.grey)),
        Container( // Fondo compartido para CircleAvatar y Text
          decoration: BoxDecoration(
            color: Config.firstColor, // Color hexadecimal #FFFFFF
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
            color: Config.firstColor, // Color hexadecimal #FFFFFF
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