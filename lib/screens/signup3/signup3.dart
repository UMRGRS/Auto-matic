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
                                "Confirma los datos",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Datebox(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 200,
                                child: TextButton(
                                  onPressed: () => {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Config.confirmGreen,
                                  ),
                                  child: const Text(
                                    "Continuar",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 40,
                                width: 200,
                                child: TextButton(
                                  onPressed: () => {},
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(71, 68, 72, 1),
                                  ),
                                  child: const Text(
                                    "Corregir VIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
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
