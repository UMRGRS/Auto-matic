import 'package:auto_matic/config/config.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Container(
          padding: const EdgeInsets.all(10),
          color: Config.firstColor,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Introduce el código único del producto',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                              InfoButton(),
                            ],
                          ),
                          TextField(
                            decoration: const InputDecoration(
                              hintText: 'XXXX-XXXX-XXXX-XXXX',
                              border:
                                  OutlineInputBorder(), // Agregamos borde al TextField
                            ),
                            inputFormatters: [
                              MaskTextInputFormatter(
                                mask: 'xxxx-xxxx-xxxx-xxxx',
                                filter: {
                                  'x': RegExp(r'[0-9]'),
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Lógica para el botón "Continuar"
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Config.confirmGreen,
                              ),
                              child: const Text('Continuar',
                                  style: TextStyle(color: Config.firstColor)),
                            ),
                          ),
                        ],
                      ),
                      Timeline(currentPage: 0), // Línea de tiempo
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar());
  }
}
