import 'package:auto_matic/config/config.dart';

class SinguUp1 extends StatelessWidget {
  const SinguUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Introduce el código único del producto',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButton(
                  icon: Icon(Icons.question_mark, color: Colors.black),
                  onPressed: () {
                    // Lógica para mostrar texto cuando se presiona el botón de pregunta
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text('Suele estar en la caja o etiqueta del producto, junto al código de barras. Tiene entre 8 y 14 dígitos.No tiene letras, excepto en autopartes.No es un código interno como el SKU o el código de distribución.Pueden ser de varios tipos como:UPC: es el más común en Estado Unidos y Canadá y tiene 12 dígitos.EAN: es el más común en Europa y tiene 13 dígitos.JAN: es el más común en Japón y tiene 13 dígitos.ISBN: se utiliza principalmente para identificar libros.'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'XXXX-XXXX-XXXX-XXXX',
                  border: OutlineInputBorder(), // Agregamos borde al TextField
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón "Continuar"
            },
            child: Text('Continuar', style: TextStyle(color: Config.firstColor)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Config.sixColor,
            ),
          ),
          TimelineWidget(currentPage: 0), // Línea de tiempo
        ],
      ),
    );
  }
}