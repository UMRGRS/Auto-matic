import 'package:auto_matic/app/config/config.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({super.key, required this.showFunction});
  final Function(BuildContext context) showFunction;
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
            child: const Icon(Icons.question_mark,
                color: Colors.white,
                size: 16), // Cambia el color del icono a blanco
          ),
        ),
        onTap: () => showFunction(context),
      ),
    );
  }
}
