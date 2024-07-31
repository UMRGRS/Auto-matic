import 'package:auto_matic/app/UI/screens/register_car/utils/confirm_car_data.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/UI/screens/register_car/controller/register_car_controller.dart';

class CarDataBox extends StatelessWidget {
  const CarDataBox(
      {super.key,
      required this.controller,
      required this.changeVisibility,
      required this.updateTimeLine});

  final RegisterCarController controller;
  final VoidCallback changeVisibility;
  final void Function(double) updateTimeLine;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        "Confirma los datos de tu vehículo",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: const Text(
                "Modelo",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                controller.state.carVIN,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Divider(height: 5),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => confirmCarData(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Config.confirmGreen,
                  ),
                  child: const Text(
                    "Continuar",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    changeVisibility();
                    updateTimeLine(1.5);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text(
                    "Corregir VIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
