import 'package:auto_matic/config/config.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            AppBarButton(
              text: "Iniciar sesión",
              onPressed: () {
                context.pushNamed('login');
              },
            ),
            AppBarButton(
              text: "Cancelar",
              onPressed: () {
                context.pushNamed('landing');
              },
              color: Config.fifthColor,
            ),
          ],
        ),
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
                              Flexible(
                                child: Column(
                                  children: [
                                    Text(
                                      'Introduce el código único del producto',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
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
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.pushNamed('sign-up-II');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Config.confirmGreen,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Continuar',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                          ),
                        ],
                      ),
                      const TimeLine(value: 0,), // Línea de tiempo
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
