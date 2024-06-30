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
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Flex(
      direction: isScreenWide ? Axis.horizontal:Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SpeedometerChart(
              title: Text("KPM", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              valueWidget: Text("75", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              minWidget: Text("0", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              maxWidget: Text("200", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              dimension: 230,
              minValue: 0,
              maxValue: 200,
              value: 75,
              graphColor: [Colors.green, Colors.green, Colors.yellow, Colors.yellow, Colors.red, Colors.red],
              pointerColor: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 50,height: 10),
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SpeedometerChart(
              title: Text("RPM", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              valueWidget: Text("1500", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              minWidget: Text("0", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              maxWidget: Text("10000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
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
