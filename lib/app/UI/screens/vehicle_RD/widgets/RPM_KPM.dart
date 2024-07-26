import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RPMKPM extends StatelessWidget {
  const RPMKPM({super.key, required this.stream});
  final Stream<DocumentSnapshot> stream;
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return StreamBuilder(
        stream: stream,
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Algo salio mal, intenta mas tarde');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Config.secondColor,
                ),
              ],
            );
          }
          return Builder(
            builder: (context) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
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
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          axes: [
                            RadialAxis(
                              minimum: 0,
                              maximum: 200,
                              canRotateLabels: true,
                              showLastLabel: true,
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                  value: data['speed'],
                                  enableAnimation: true,
                                )
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Text('${data['speed']}',
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
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
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          axes: [
                            RadialAxis(
                              minimum: 0,
                              maximum: 8000,
                              canRotateLabels: true,
                              showLastLabel: true,
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                  value: data['rpm'],
                                  enableAnimation: true,
                                )
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Text('${data['rpm']}',
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
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
          );
        });
  }
}
