import 'package:auto_matic/app/config/config.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Progreso hasta el siguiente servicio",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SfLinearGauge(
                  showTicks: false,
                  animateAxis: true,
                  onGenerateLabels: () {
                    return <LinearAxisLabel>[
                      const LinearAxisLabel(text: "50.4%", value: 50),
                    ];
                  },
                  labelOffset: 10,
                  axisLabelStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  axisTrackStyle: LinearAxisTrackStyle(
                    thickness: 30,
                    edgeStyle: LinearEdgeStyle.bothCurve,
                    borderWidth: 1,
                    borderColor: Colors.grey[350],
                    color: Colors.grey[350],
                  ),
                  barPointers: const <LinearBarPointer>[
                    LinearBarPointer(
                        value: 50.4,
                        thickness: 30,
                        edgeStyle: LinearEdgeStyle.bothCurve,
                        color: Colors.blue),
                  ],
                )),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Restante: 84 dias",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5,
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
