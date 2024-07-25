import 'package:auto_matic/app/config/config.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: InkWell(
        splashColor: Colors.white30,
        child: Container(
          decoration: const ShapeDecoration(
            color: Colors.grey, // Cambia el color de fondo del botón
            shape: CircleBorder(),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 16, maxHeight: 16),
            child: const Icon(Icons.question_mark, color: Colors.white, size: 16), // Cambia el color del icono a blanco
          ),
        ),
        onTap: () {
          // Lógica para mostrar texto cuando se presiona el botón de pregunta
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              content: Text(
                  'Suele estar en la caja o etiqueta del producto, junto al código de barras. Tiene entre 8 y 14 dígitos.No tiene letras, excepto en autopartes.No es un código interno como el SKU o el código de distribución.Pueden ser de varios tipos como:UPC: es el más común en Estado Unidos y Canadá y tiene 12 dígitos.EAN: es el más común en Europa y tiene 13 dígitos.JAN: es el más común en Japón y tiene 13 dígitos.ISBN: se utiliza principalmente para identificar libros.'),
            ),
          );
        },
      ),
    );
  }
}