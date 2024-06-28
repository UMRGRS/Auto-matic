


import 'package:auto_matic/config/config.dart';




class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajusta el margen lateral
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [

                   Text(
                    "Introduce el VIN del vehículo",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.left,
                  ),

                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.black87,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.question_mark),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "xxx-xxx-xxx-xxx",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                backgroundColor: Config.sixColor, // Asegúrate de que Config.sixColor esté definido
              ),
              child: Text(
                "Registrar",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
