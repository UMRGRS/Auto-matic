import 'package:auto_matic/config/config.dart';
class InkButton extends StatelessWidget {
  const InkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 24, maxHeight: 24),
        child: Material(
          child: InkWell(
            splashColor: Colors.white30,
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.grey, // Cambia el color de fondo del botón
                shape: CircleBorder(),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 16, maxHeight: 16),
                child: Icon(Icons.question_mark, color: Colors.white, size: 16), // Cambia el color del icono a blanco
              ),
            ),
            onTap: () {
              // Lógica para mostrar texto cuando se presiona el botón de pregunta
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                      'Suele estar en la caja o etiqueta del producto, junto al código de barras. Tiene entre 8 y 14 dígitos.No tiene letras, excepto en autopartes.No es un código interno como el SKU o el código de distribución.Pueden ser de varios tipos como:UPC: es el más común en Estado Unidos y Canadá y tiene 12 dígitos.EAN: es el más común en Europa y tiene 13 dígitos.JAN: es el más común en Japón y tiene 13 dígitos.ISBN: se utiliza principalmente para identificar libros.'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}