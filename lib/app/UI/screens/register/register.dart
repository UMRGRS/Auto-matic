import 'package:auto_matic/app/UI/screens/register/controller/register_controller.dart';
import 'package:auto_matic/app/UI/screens/register/controller/register_state.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_svg/flutter_svg.dart';

final registerProvider = StateProvider<RegisterController, RegisterState>(
    (_) => RegisterController());

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 650;
    return Scaffold(
        appBar: CustomAppBar(
          actions: [
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
          color: Config.firstColor,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Builder(
                    builder: (_) {
                      if (isScreenWide) {
                        return Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff72c6ef),
                                      Config.thirdColor
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 67.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "Bienvenido",
                                        style: TextStyle(
                                            fontFamily: "Lobster",
                                            fontSize: 50,
                                            color: Colors.white),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: SvgPicture.asset(
                                          "assets/pages/register/icons/driver.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 6,
                              child: CreateAccount(),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            Container(
                              height: 55,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff72c6ef),
                                    Config.thirdColor
                                  ],
                                  stops: [0, 1],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Bienvenido",
                                    style: TextStyle(
                                        fontFamily: "Lobster",
                                        fontSize: 40,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const CreateAccount()
                          ],
                        );
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar());
  }
}
