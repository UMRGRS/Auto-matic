import 'package:auto_matic/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.logo_dev),
        title: const Text("Auto-matic"),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Iniciar sesión",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 8),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Registrarse",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
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
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  color: const Color(0xff998fc7),

                  child: Row(
                    children: [
                      Container( //reemplazar container por imagen
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.black,
                        width: 90,
                        height: 90,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Servicio 1",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Texto de descripción del servicio 1",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  color: const Color(0xff998fc7),

                  child: Row(
                    children: [
                      Container( //reemplazar container por imagen
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.black,
                        width: 90,
                        height: 90,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Servicio 2",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Texto de descripción del servicio 2",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  color: const Color(0xff998fc7),

                  child: Row(
                    children: [
                      Container(//reemplazar container por imagen
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.black,
                        width: 90,
                        height: 90,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Servicio 3",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Texto de descripción del servicio 3",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  color: const Color(0xff998fc7),

                  child: Row(
                    children: [
                      Container( //reemplazar container por imagen
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.black,
                        width: 90,
                        height: 90,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Servicio 4",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Texto de descripción del servicio 4",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Center(
          child: Text(
            "Auto-matic",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
