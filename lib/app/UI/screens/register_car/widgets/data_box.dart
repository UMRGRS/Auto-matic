import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class DataBox extends StatefulWidget {
  const DataBox({super.key});

  @override
  DataBoxState createState() => DataBoxState();
}

class DataBoxState extends State<DataBox> {
  @override
  Widget build(BuildContext context) {
    return ProviderListener(
        provider: registerCarProvider,
        builder: (_, controller) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ListTile(
                    leading: const Text(
                      "Modelo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      controller.state.carModel,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const Divider(height: 5),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    leading: const Text(
                      "Fabricante",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      controller.state.carMade,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const Divider(height: 5),
                  ListTile(
                    leading: const Text(
                      "Año",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      controller.state.carYear,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const Divider(height: 5),
                  ListTile(
                    leading: const Text(
                      "VIN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      controller.state.carVIN,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
