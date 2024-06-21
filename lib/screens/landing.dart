import 'package:auto_matic/config/config.dart';
import 'package:flutter/material.dart';

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
                margin: const EdgeInsets.all(2.0),
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
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Texto de descripción del producto",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFBA2D0B),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
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
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(
                    margin: const EdgeInsets.all(2.0),
                    color: Color(0xFF998FC7),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          color: Colors.black,
                          width: MediaQuery.of(context).size.width / 10,
                          height: MediaQuery.of(context).size.width / 10,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2.0),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nombre del producto",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Bottom text",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
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