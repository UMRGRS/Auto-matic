import 'package:auto_matic/config/config.dart';

class VehiculeDataCard extends StatelessWidget {
  const VehiculeDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        direction: Axis.vertical,
        children: [
          const Text(
            "Apodo",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 200,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200)),
            child: Image.asset(
              "assets/images/default.jpg",
            ),
          ),
          InfoCard(width: double.infinity, label: "Modelo", text: "Sentra"),
          InfoCard(width: double.infinity, label: "Fabricante", text: "Nissan"),
          InfoCard(width: double.infinity, label: "Año", text: "2002"),
          InfoCard(
              width: double.infinity, label: "VIN", text: "TGFDREWSDRFTGYHUJ"),
          Container(
            alignment: Alignment.centerRight,
            child: ImportantTextButton(
                text: "Eliminar vehículo",
                onPressed: () {},
                iconPath: "assets/pages/vehiculeRD/icons/delete.svg"),
          )
        ],
      ),
    ));
  }
}
