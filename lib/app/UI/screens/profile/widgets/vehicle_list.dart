import 'package:auto_matic/app/UI/screens/profile/controller/get_static_data_controller.dart';
import 'package:auto_matic/app/UI/screens/profile/utils/vehicle_states.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> carsStream =
        GetStaticDataController.getUserCars();
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 550;
    return StreamBuilder(
        stream: carsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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

          return ListView(
            children: snapshot.data!.docs
                .map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  final stateData = VehicleStates
                      .vehicleStates[CarData.stringToState(data['state'])]!;
                  return CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      context.pushReplacementNamed(
                        'vehicle-real-time',
                        extra: {
                          "static_reference": document.reference,
                          "realtime_reference": data['realtime']
                        },
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: responsive.width,
                          child: Flex(
                            direction:
                                isScreenWide ? Axis.horizontal : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/default_car.png",
                                height: 75,
                                width: 150,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("Apodo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    data['alias'],
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    "Modelo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${data['model']} ${data['year']}",
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("Estado",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  Card(
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: stateData["color"]),
                                              child: SvgPicture.asset(
                                                stateData["iconPath"],
                                                color: Colors.white,
                                                height: responsive.ip(1.6),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              stateData["text"],
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })
                .toList()
                .cast(),
          );
        });
  }
}
