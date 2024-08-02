import 'package:auto_matic/app/config/config.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;

    String cardtext1 =
        'Monitorea continuamente la temperatura del motor, alertándote de posibles sobrecalentamientos y garantizando así un rendimiento óptimo y seguro.';
    String cardtext2 =
        'Recibe información precisa sobre la velocidad de tu vehículo, lo que te ayuda a mantener un control adecuado y a cumplir con las normativas de tránsito.';
    String cardtext3 =
        'Supervisa el voltaje de la batería para asegurar que el sistema eléctrico de tu automóvil funcione correctamente y prevenir fallos inesperados.';
    String cardtext4 =
        'Consulta datos detallados sobre las revoluciones por minuto de tu motor para optimizar el consumo de combustible y prolongar la vida útil del motor mediante un manejo más eficiente.';
    String cardtitle1 = 'Temperatura';
    String cardtitle2 = 'Velocidad';
    String cardtitle3 = 'Voltaje de la batería';
    String cardtitle4 = 'Revoluciones';
    String tempicon = 'assets/pages/landing/icons/temperatura.svg';
    String velicon = 'assets/pages/landing/icons/velocidad.svg';
    String volticon = 'assets/pages/landing/icons/voltaje.svg';
    String revicon = 'assets/pages/landing/icons/rpm.svg';
    String prototype = "assets/pages/landing/images/prototype.png";

    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            AppBarButton(
              //Document this
              text: "Iniciar sesión",
              onPressed: () async {
                context.pushNamed('login');
              },
            ),
            AppBarButton(
              text: "Regístrate",
              onPressed: () {
                //Document this
                context.pushNamed('register');
              },
            )
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Builder(builder: (_) {
                            if (isScreenWide) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //Change for the appropriate image
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        prototype,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 8,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Auto-matic",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Auto-matic transforma tu experiencia de mantenimiento vehicular con una innovadora "
                                          "solución de monitoreo en tiempo real. A través de una aplicación web y móvil, "
                                          "captura datos cruciales de tu automóvil, permitiéndote anticipar servicios "
                                          "necesarios y mejorar la seguridad y eficiencia.",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //Change for the appropriate image
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        prototype,
                                        width: 200,
                                      )),
                                  const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Auto-matic",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Auto-matic transforma tu experiencia de mantenimiento vehicular con una innovadora "
                                        "solución de monitoreo en tiempo real. A través de una aplicación web y móvil, "
                                        "captura datos cruciales de tu automóvil, permitiéndote anticipar servicios "
                                        "necesarios y mejorar la seguridad y eficiencia.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }
                          }),
                        ),
                      ),
                      const Text(
                        "Servicios",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Builder(builder: (_) {
                        if (isScreenWide) {
                          return Row(
                            children: [
                              Expanded(
                                child: Landingcard(
                                  titulo: cardtitle1,
                                  texto: cardtext1,
                                  imagen: tempicon,
                                ),
                              ), //new widget
                              Expanded(
                                child: Landingcard(
                                  titulo: cardtitle2,
                                  texto: cardtext2,
                                  imagen: velicon,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              Landingcard(
                                titulo: cardtitle1,
                                texto: cardtext1,
                                imagen: tempicon,
                              ), //new widget
                              Landingcard(
                                titulo: cardtitle2,
                                texto: cardtext2,
                                imagen: velicon,
                              ),
                            ],
                          );
                        }
                      }),
                      Builder(builder: (_) {
                        if (isScreenWide) {
                          return Row(
                            //direction: isScreenWide ? Axis.horizontal : Axis.vertical,
                            children: [
                              Expanded(
                                child: Landingcard(
                                  titulo: cardtitle3,
                                  texto: cardtext3,
                                  imagen: volticon,
                                ),
                              ),
                              Expanded(
                                child: Landingcard(
                                  titulo: cardtitle4,
                                  texto: cardtext4,
                                  imagen: revicon,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Column(
                            //direction: isScreenWide ? Axis.horizontal : Axis.vertical,
                            children: [
                              Landingcard(
                                titulo: cardtitle3,
                                texto: cardtext3,
                                imagen: volticon,
                              ),
                              Landingcard(
                                titulo: cardtitle4,
                                texto: cardtext4,
                                imagen: revicon,
                              ),
                            ],
                          );
                        }
                      }),
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
