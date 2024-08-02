import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/get_real_time_data.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VehicleIndicators extends StatelessWidget {
  const VehicleIndicators({super.key, required this.realtimeReference});
  final DocumentReference? realtimeReference;
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    //Document this
    final Stream<DocumentSnapshot> stream =
        GetRealTimeData.getDocumentSnapshot(realtimeReference!);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Indicadores",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ImportantTextButton(
                text: "Datos del vehículo",
                //Document this
                onPressed: () => Scaffold.of(context).openDrawer(),
                iconPath: "assets/pages/vehicle_RD/icons/car.svg",
              )
            ],
          ),
          Column(
            children: [
              TempBattery(
                stream: stream,
              ),
              const SizedBox(
                height: 10,
              ),
              RPMKPM(
                stream: stream,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Builder(
            builder: (_) {
              if (isScreenWide) {
                return Row(
                  children: [
                    Expanded(
                        child: ServicesCard(
                      stream: stream,
                      realtimeReference: realtimeReference,
                    )),
                    Expanded(
                        child: FailureCodesCard(
                      stream: stream,
                    ))
                  ],
                );
              } else {
                return Column(
                  children: [
                    ServicesCard(
                      stream: stream,
                      realtimeReference: realtimeReference,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FailureCodesCard(
                      stream: stream,
                    )
                  ],
                );
              }
            },
          )
        ],
      ),
    );
  }
}
