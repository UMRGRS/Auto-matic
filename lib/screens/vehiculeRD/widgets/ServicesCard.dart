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
    return Container(
      height: 350,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Servicios",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Kilometros hasta el siguiente servicio"),
            FAProgressBar(
              maxValue: 100,
              border: Border.all(width: 0.1),
              currentValue: 50,
              displayText: '%',
              progressColor: Colors.green,
            ),
            Text(
              "Restante: 3780KM",
              textAlign: TextAlign.center,
            ),
            Text("Dias hasta el siguiente servicio"),
            FAProgressBar(
              maxValue: 100,
              border: Border.all(width: 0.1),
              currentValue: 50,
              displayText: '%',
              progressColor: Colors.green,
            ),
            Text(
              "Restante: 90 dias",
              textAlign: TextAlign.center,
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
