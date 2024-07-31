import 'package:auto_matic/app/config/config.dart';

Future<void> showUniqueCodePopUp(BuildContext context){
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        children: [
          const Text("¿Dónde puedo encontrar el código único de mi producto?"),
          Image.asset(
            'assets/pages/register_car/images/find_unique_code.png',
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
                  "En la primera página del instructivo incluido con el producto"),
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
                  "Impreso en la parte inferior del producto"),
            ),
          ],
        ),
      ),
    ),
  );
}