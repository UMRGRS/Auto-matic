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
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Servicios",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5,),
            const Text(
              "Progreso hasta el siguiente servicio (Días)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 5,),
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
            const SizedBox(height: 5,),
            const Text(
              "Restante: 84 dias",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 5,),
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
