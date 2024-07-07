import 'package:auto_matic/config/config.dart';

class SignUp4 extends StatelessWidget {
  const SignUp4({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (_) {
                          if (isScreenWide) {
                            return const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Sección de creación de cuenta
                                  Expanded(
                                    flex: 10,
                                    child: CreateAccount(),
                                  ),
                                  // Sección de acceso con redes sociales
                                  Expanded(
                                    flex: 2,
                                    child: AccessWithSM(),
                                  ),
                                  //ConstructorBody()
                                ]);
                          } else {
                            return const Column(children: [
                              // Sección de creación de cuenta
                              CreateAccount(),
                              // Sección de acceso con redes sociales
                              AccessWithSM(),
                              //ConstructorBody()
                            ]);
                          }
                        },
                      ),
                      const Timeline(currentPage: 0)
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
