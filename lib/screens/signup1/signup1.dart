import 'package:auto_matic/config/config.dart';

class SinguUp1 extends StatelessWidget {
  const SinguUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          TimelineWidget(currentPage: 0), // Línea de tiempo
          SizedBox(height: 16.0),

          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
