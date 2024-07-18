import 'package:auto_matic/app/config/config.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

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
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
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
                                        "Introduce el VIN del vehículo",
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
                                hintText: 'ZPBUA1ZL9KLA00848',
                                border:
                                    OutlineInputBorder(), // Agregamos borde al TextField
                              ),
                              inputFormatters: [
                                MaskTextInputFormatter(
                                  mask: 'xxxxxxxxxxxxxxxxx',
                                  filter: {
                                    'x': RegExp(r'[(A-H|J-N|P|R-Z|0-9)]'),
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.pushNamed('sign-up-III');
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
                        const TimeLine(value: 10,)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar());
  }
}
