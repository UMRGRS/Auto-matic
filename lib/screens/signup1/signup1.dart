import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/screens/signup1/widgets/ink_button.dart';
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
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Alinear al principio
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Alinear a la izquierda
                    children: [
                      Align(
                        // Alinear el TextField a la esquina superior izquierda
                        alignment: Alignment.topLeft,
                        child: ConstrainedBox(
                          // Limitar el ancho del TextField
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.6),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:
                                  'Introduce el código único del producto',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
// Lógica para el botón "Continuar"
                        },
                        child: Text('Continuar',
                            style: TextStyle(
                                color: Config.firstColor)), // Letra blanca
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Config.secondColor, // Color hexadecimal #208454
                        ),
                      ),
                      SizedBox(height: 32.0),
                      Timeline(currentPage: 1), // Línea de tiempo
                      SizedBox(height: 16.0),
                      SizedBox(height: 16.0),
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
