import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_svg/svg.dart';

class VehicleDataCard extends StatelessWidget {
  const VehicleDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        direction: Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width:40,),
              const Flexible(
                child: Column(
                  children: [
                    Text(
                      "Apodo chiquito",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/pages/profile/icons/edit.svg",
                    color: Colors.black54,
                  )),
            ],
          ),
          Container(
            width: 200,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
            child: Image.asset(
              "assets/images/default.jpg",
            ),
          ),
          const InfoCard(label: "Modelo", text: "Sentra"),
          const InfoCard(label: "Fabricante", text: "Nissan"),
          const InfoCard(label: "Año", text: "2002"),
          const InfoCard(label: "VIN", text: "TGFDREWSDRFTGYHUJ"),
          Container(
            alignment: Alignment.centerRight,
            child: ImportantTextButton(
                text: "Eliminar vehículo",
                onPressed: () {},
                iconPath: "assets/pages/vehiculeRD/icons/delete.svg"),
          )
        ],
      ),
    );
  }
}
