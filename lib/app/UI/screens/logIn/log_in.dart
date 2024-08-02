import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/UI/screens/logIn/controller/log_in_controller.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_svg/flutter_svg.dart';

final loginProvider = SimpleProvider(
      (_) => LogInController(sessionProvider.read), autoDispose: false,
);

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            kIsWeb
                ? AppBarButton(
                    text: "Cancelar",
                    onPressed: () {
                      context.pushReplacementNamed('landing');
                    },
                    color: Config.fifthColor,
                  )
                : Container(
                    width: 0,
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
                  child: Column(
                    children: [
                      Builder(
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
                                      padding: const EdgeInsets.symmetric(vertical: 99),
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
                                              height: 400),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 6,
                                  child: LogInForm(),
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
