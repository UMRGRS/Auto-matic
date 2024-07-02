import 'package:auto_matic/config/config.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({super.key});

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
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Confirma los datos de tu vehículo",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Databox(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Lógica para el botón "Continuar"
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
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Lógica para el botón "Corregir VIN"
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Corregir VIN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
