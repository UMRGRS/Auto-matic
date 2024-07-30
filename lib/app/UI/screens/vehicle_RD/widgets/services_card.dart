import 'package:auto_matic/app/UI/screens/vehicle_RD/utils/convert_date.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/widgets/reset_service_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard(
      {super.key, required this.stream, required this.realtimeReference});
  final Stream<DocumentSnapshot> stream;
  final DocumentReference? realtimeReference;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Algo salió mal, intenta más tarde.");
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
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return SizedBox(
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Servicios",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                              LinearAxisLabel(
                                  text:
                                      "${ConvertDate.getPer(data['lastServiceDate'])}%",
                                  value: 50),
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
                          barPointers: <LinearBarPointer>[
                            LinearBarPointer(
                                value:
                                    ConvertDate.getPer(data['lastServiceDate']),
                                thickness: 30,
                                edgeStyle: LinearEdgeStyle.bothCurve,
                                color: Colors.blue),
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Fecha del último servicio: ${ConvertDate.getFormatedDate(data['lastServiceDate'])}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Fecha del siguiente servicio: ${ConvertDate.getNextServiceDate(data['lastServiceDate'])}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Restante: ${ConvertDate.daysBetween(data['lastServiceDate']).toString()} dias",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ImportantTextButton(
                      text: "Reiniciar servicio",
                      onPressed: () =>
                          showResetServicePopUp(context, realtimeReference!),
                      iconPath: 'assets/pages/vehicle_RD/icons/reset.svg',
                    )
                  ],
                ),
              )),
            );
          },
        );
      },
    );
  }
}
