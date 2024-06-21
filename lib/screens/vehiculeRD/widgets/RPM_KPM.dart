import 'package:auto_matic/config/config.dart';

import 'package:speedometer_chart/speedometer_chart.dart';

class RPMKPM extends StatefulWidget {
  const RPMKPM({super.key});

  @override
  State<RPMKPM> createState() => _RPMKPMState();
}

class _RPMKPMState extends State<RPMKPM> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SpeedometerChart(
              title: Text("KPM"),
              valueWidget: Text("75"),
              minWidget: Text("0"),
              maxWidget: Text("100"),
              dimension: 230,
              minValue: 0,
              maxValue: 100,
              value: 75,
              graphColor: [Colors.green, Colors.green, Colors.yellow, Colors.yellow, Colors.red, Colors.red],
              pointerColor: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 50,),
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SpeedometerChart(
              title: Text("RPM"),
              valueWidget: Text("1500"),
              minWidget: Text("0"),
              maxWidget: Text("10000"),
              dimension: 230,
              minValue: 0,
              maxValue: 10000,
              value: 1500,
              graphColor: [Colors.green, Colors.green, Colors.yellow, Colors.yellow, Colors.red, Colors.red],
              pointerColor: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
