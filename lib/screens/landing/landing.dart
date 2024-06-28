import 'package:auto_matic/config/config.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffE0DDCF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width / 6 - 20,
                  height: MediaQuery.of(context).size.width / 6 - 20,
                ),
                Container(
                  margin: const EdgeInsets.all(2.0),
                  width: MediaQuery.of(context).size.width * 3 / 4 - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nombre del producto",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Texto de descripción del producto",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFBA2D0B),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
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
            Container(
              margin: const EdgeInsets.all(2.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Servicios",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Row(
              children: [
                Expanded(
                    child: Landingcard(
                  titulo: 'Temperatura',
                  texto: 'Descripcion del servicio 1',
                  imagen: 'assets/pages/landing/icons/temperatura.svg',
                )), //new widget
                Expanded(
                    child: Landingcard(
                  titulo: 'Velocidad',
                  texto: 'Descripcion del servicio 2',
                  imagen: 'assets/pages/landing/icons/velocidad.svg',
                )),
              ],
            ),
            const Row(
              children: [
                Expanded(
                    child: Landingcard(
                  titulo: 'Voltaje de la batería',
                  texto: 'Descripcion del servicio 3',
                  imagen: 'assets/pages/landing/icons/voltaje.svg',
                )),
                Expanded(
                    child: Landingcard(
                  titulo: 'Revoluciones',
                  texto: 'Descripcion del servicio 4',
                  imagen: 'assets/pages/landing/icons/rpm.svg',
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
