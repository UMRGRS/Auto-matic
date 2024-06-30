import 'package:auto_matic/config/config.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //Change for the appropriate image
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        "assets/images/default.jpg",
                                        width: 100,
                                      ))),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Auto-matic",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "Auto-matic transforma tu experiencia de mantenimiento vehicular con una innovadora "
                                      "solución de monitoreo en tiempo real. A través de una aplicación web y móvil, "
                                      "captura datos cruciales de tu automóvil, permitiéndote anticipar servicios "
                                      "necesarios y mejorar la seguridad y eficiencia.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFFBA2D0B),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Comprar",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "Servicios",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Landingcard(
                            titulo: 'Temperatura',
                            texto:
                                'Monitorea continuamente la temperatura del motor, alertándote sobre posibles sobrecalentamientos y garantizando un rendimiento óptimo y seguro.',
                            imagen:
                                'assets/pages/landing/icons/temperatura.svg',
                          )), //new widget
                          Expanded(
                              child: Landingcard(
                            titulo: 'Velocidad',
                            texto:
                                'Recibe información precisa sobre la velocidad de tu vehículo, ayudándote a mantener un control adecuado y a cumplir con las normativas de tránsito.',
                            imagen: 'assets/pages/landing/icons/velocidad.svg',
                          )),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Landingcard(
                            titulo: 'Voltaje de la batería',
                            texto:
                                'Supervisa el voltaje de la batería, asegurando que el sistema eléctrico de tu automóvil funcione correctamente y previniendo fallos inesperados.',
                            imagen: 'assets/pages/landing/icons/voltaje.svg',
                          )),
                          Expanded(
                              child: Landingcard(
                            titulo: 'Revoluciones',
                            texto:
                                'Consulta datos detallados sobre las revoluciones por minuto de tu motor, ayudándote a optimizar el consumo de combustible y a prolongar la vida útil del motor mediante un manejo más eficiente.',
                            imagen: 'assets/pages/landing/icons/rpm.svg',
                          )),
                        ],
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
