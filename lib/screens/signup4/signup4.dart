import 'package:auto_matic/config/config.dart';

class SignUp4 extends StatelessWidget {
  const SignUp4({super.key});

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
                      const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Sección de creación de cuenta
                            Expanded(
                              flex: 2,
                              child: CreateAccount(),
                            ),
                            // Sección de acceso con redes sociales
                            Expanded(
                              flex: 1,
                              child: AccessWithSM(),
                            ),
                            //ConstructorBody()
                          ]),
                      Timeline(currentPage: 0)
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
