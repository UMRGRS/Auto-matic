import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TempBattery extends StatefulWidget {
  const TempBattery({super.key});

  @override
  State<TempBattery> createState() => _TempBatteryState();
}

class _TempBatteryState extends State<TempBattery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: SvgPicture.asset(
                  "assets/pages/vehicle_RD/icons/temperature.svg",
                  height: 50,
                ),
                title: const Text(
                  "Temperatura",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                subtitle: SfLinearGauge(
                  minimum: 0,
                  maximum: 150,
                  minorTicksPerInterval: 4,
                  labelOffset: 10,
                  axisTrackStyle: const LinearAxisTrackStyle(thickness: 0),
                  markerPointers: const [
                    LinearWidgetPointer(
                        position: LinearElementPosition.outside,
                        value: 30,
                        child: SizedBox(
                          height: 45,
                          child: Column(children: [
                            Text("30°C", style: TextStyle(fontSize: 18),),
                            LinearShapePointer(
                              value: 0,
                            ),
                          ]),
                        )),
                  ],
                  ranges: const <LinearGaugeRange>[
                    LinearGaugeRange(
                        startWidth: 8,
                        endWidth: 8,
                        startValue: 0,
                        endValue: 80,
                        position: LinearElementPosition.outside,
                        color: Colors.blue),
                    LinearGaugeRange(
                        startWidth: 8,
                        endWidth: 8,
                        startValue: 80,
                        endValue: 110,
                        position: LinearElementPosition.outside,
                        color: Colors.green),
                    LinearGaugeRange(
                        startWidth: 8,
                        endWidth: 8,
                        startValue: 110,
                        endValue: 150,
                        position: LinearElementPosition.outside,
                        color: Colors.red),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset(
                "assets/pages/vehicle_RD/icons/carBattery.svg",
                height: 50,
              ),
              title: const Text(
                "Bateria",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              subtitle: SfLinearGauge(
                minimum: 10,
                maximum: 16,
                showTicks: false,
                labelOffset: 10,
                axisTrackStyle: const LinearAxisTrackStyle(thickness: 0),
                onGenerateLabels: () {
                  return <LinearAxisLabel>[
                    const LinearAxisLabel(text: '10', value: 10),
                    const LinearAxisLabel(text: '12.6', value: 12.6),
                    const LinearAxisLabel(text: '13.6', value: 13.6),
                    const LinearAxisLabel(text: '16', value: 16),
                  ];
                },
                markerPointers: const [
                  LinearWidgetPointer(
                      position: LinearElementPosition.outside,
                      value: 13.7,
                      child: SizedBox(
                        height: 45,
                        child: Column(children: [
                          Text("13.7V", style: TextStyle(fontSize: 18)),
                          LinearShapePointer(
                            value: 0,
                          ),
                        ]),
                      )),
                ],
                ranges: const <LinearGaugeRange>[
                  LinearGaugeRange(
                      startWidth: 8,
                      endWidth: 8,
                      startValue: 10,
                      endValue: 12.6,
                      position: LinearElementPosition.outside,
                      color: Colors.red),
                  LinearGaugeRange(
                      startWidth: 8,
                      endWidth: 8,
                      startValue: 12.6,
                      endValue: 13.6,
                      position: LinearElementPosition.outside,
                      color: Colors.orange),
                  LinearGaugeRange(
                      startWidth: 8,
                      endWidth: 8,
                      startValue: 13.6,
                      endValue: 16,
                      position: LinearElementPosition.outside,
                      color: Colors.green),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
