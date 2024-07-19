import 'package:auto_matic/app/config/config.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
      direction: isScreenWide ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SfRadialGauge(
                title: const GaugeTitle(
                    text: "KPM",
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                axes: [
                  RadialAxis(
                    minimum: 0,
                    maximum: 200,
                    canRotateLabels: true,
                    showLastLabel: true,
                    pointers: const <GaugePointer>[
                      NeedlePointer(
                        value: 80,
                        enableAnimation: true,
                      )
                    ],
                    annotations: const <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Text('80.0',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          angle: 90,
                          positionFactor: 0.8)
                    ],
                    ranges: [
                      GaugeRange(
                        startValue: 0,
                        endValue: 70,
                        color: Colors.blue,
                      ),
                      GaugeRange(
                        startValue: 70,
                        endValue: 100,
                        color: Colors.green,
                      ),
                      GaugeRange(
                        startValue: 100,
                        endValue: 200,
                        color: Colors.red,
                      )
                    ],
                  )
                ]),
          ),
        ),
        const SizedBox(width: 50, height: 10),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SfRadialGauge(
                title: const GaugeTitle(
                    text: "RPM",
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                axes: [
                  RadialAxis(
                    minimum: 0,
                    maximum: 8000,
                    canRotateLabels: true,
                    showLastLabel: true,
                    pointers: const <GaugePointer>[
                      NeedlePointer(
                        value: 1100,
                        enableAnimation: true,
                      )
                    ],
                    annotations: const <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Text('1100.0',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          angle: 90,
                          positionFactor: 0.8)
                    ],
                    ranges: [
                      GaugeRange(
                        startValue: 0,
                        endValue: 5000,
                        color: Colors.green,
                      ),
                      GaugeRange(
                        startValue: 5000,
                        endValue: 6000,
                        color: Colors.orange,
                      ),
                      GaugeRange(
                        startValue: 6000,
                        endValue: 8000,
                        color: Colors.red,
                      )
                    ],
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
