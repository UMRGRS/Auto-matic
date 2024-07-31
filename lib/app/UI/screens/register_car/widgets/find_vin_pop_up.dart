import 'package:auto_matic/app/config/config.dart';

Future<void> showFindVinPopUp(BuildContext context){
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        children: [
          const Text("¿Dónde puedo encontrar el VIN de mi vehículo?"),
          Image.asset(
            'assets/pages/register_car/images/find_vin.png',
            height: 200,
            width: 400,
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              title: const Text(
                  "En el marco de la puerta del conductor (cara interna)"),
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
                child: const Text(
                  "2",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              title: const Text(
                  "En la esquina inferior izquierda del parabrisas"),
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
                child: const Text(
                  "3",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              title: const Text(
                  "En el área del chasis sobre la rueda delantera"),
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
                child: const Text(
                  "4",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              title: const Text(
                  "Bajo el capó, en la cara frontal del motor o en el marco trasero."),
            )
          ],
        ),
      ),
    ),
  );
}