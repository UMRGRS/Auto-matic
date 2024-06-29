import 'package:auto_matic/config/config.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class ServicesCard extends StatefulWidget {
  const ServicesCard({super.key});

  @override
  State<ServicesCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServicesCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Servicios",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Progreso hasta el siguiente servicio (KM)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            FAProgressBar(
              maxValue: 100,
              border: Border.all(width: 0.1),
              currentValue: 87,
              displayText: '%',
              displayTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
              progressColor: Colors.green,
            ),
            const Text(
              "Restante: 3780KM",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey,
            ),
            const Text(
              "Progreso hasta el siguiente servicio (Días)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            FAProgressBar(
              maxValue: 100,
              border: Border.all(width: 0.1),
              currentValue: 69,
              displayText: '%',
              displayTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
              progressColor: Colors.green,
            ),
            const Text(
              "Restante: 84 dias",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            ImportantTextButton(
              text: "Reiniciar servicio",
              onPressed: () {},
              iconPath: 'assets/pages/vehiculeRD/icons/reset.svg',
            )
          ],
        ),
      )),
    );
  }
}
