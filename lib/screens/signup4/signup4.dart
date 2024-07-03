import 'package:auto_matic/config/config.dart';

class SignUp4 extends StatelessWidget {
  const SignUp4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            AppBarButton(
              text: "Inicia sesión",
              onPressed: () {},
            ),
            AppBarButton(
              text: "Cancelar",
              onPressed: () {},
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Sección de creación de cuenta
                            Expanded(
                              flex: 10,
                              child: CreateAccount(),
                            ),
                            // Sección de acceso con redes sociales
                            Expanded(
                              flex: 3,
                              child: AccessWithSM(),
                            ),
                            //ConstructorBody()
                          ]),
                      Timeline(currentPage: 2)
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
