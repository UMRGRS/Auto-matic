import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/screens/signup1/widgets/ink_button.dart';

class SinguUp1 extends StatelessWidget {
  const SinguUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              InkButton(),
            ],
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'XXXX-XXXX-XXXX-XXXX',
                border: OutlineInputBorder(), // Agregamos borde al TextField
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón "Continuar"
            },
            child:
                Text('Continuar', style: TextStyle(color: Config.firstColor)),
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
