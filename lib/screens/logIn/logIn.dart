import 'package:auto_matic/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
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
                                height: constraints.maxHeight,
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
                                    SvgPicture.asset(
                                        "assets/pages/login/icons/city.svg",
                                        height: constraints.maxHeight * 0.8),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: SizedBox(
                                height: constraints.maxHeight,
                                child: const LogInForm(),
                              ),
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
                            const LogInForm()
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
