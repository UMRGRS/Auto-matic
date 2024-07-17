import 'package:auto_matic/app/config/config.dart';

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
          onTap: ()=>FocusScope.of(context).unfocus(),
          child: Container(
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
                        Column(
                            children: [
                          // Sección de creación de cuenta
                          CreateAccount(),
                          SizedBox(height: 8,),
                          // Sección de acceso con redes sociales
                          AccessWithSM(),
                          //ConstructorBody()
                        ]),
                        TimeLine(
                          value: 30,
                        )
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
