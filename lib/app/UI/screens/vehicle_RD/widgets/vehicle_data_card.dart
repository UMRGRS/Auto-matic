import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/get_real_time_data.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/widgets/delete_car_pop_up.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/widgets/update_alias_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/svg.dart';

class VehicleDataCard extends StatelessWidget {
  const VehicleDataCard({super.key, required this.references});
  final Map<String, dynamic> references;

  @override
  Widget build(BuildContext context) {
    //Document this
    final Stream<DocumentSnapshot> carStream =
        GetRealTimeData.getDocumentSnapshot(references['static_reference']!);
    //Document this
    return StreamBuilder(
      stream: carStream,
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Algo salió mal, intenta más tarde.");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: Config.secondColor,
          );
        }
        return Builder(
          builder: (_) {
            Map<String, dynamic> carData =
                snapshot.data!.data() as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                direction: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Text(
                              "${carData['alias']}",
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          //Document this
                          onPressed: () =>
                              UpdateAliasPopUp.showUpdateAliasPopUp(
                                  context, references['static_reference']!),
                          icon: SvgPicture.asset(
                            "assets/pages/profile/icons/edit.svg",
                            color: Colors.black54,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/default_car.png",
                    width: 250,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InfoCard(label: "Modelo", text: "${carData['model']}"),
                  InfoCard(label: "Fabricante", text: "${carData['make']}"),
                  InfoCard(label: "Año", text: "${carData['year']}"),
                  InfoCard(label: "VIN", text: "${carData['VIN']}"),
                  Container(
                    alignment: Alignment.centerRight,
                    child: ImportantTextButton(
                        text: "Eliminar vehículo",
                        //Document this
                        onPressed: () =>
                            showDeleteCarPopUp(context, references),
                        iconPath: "assets/pages/vehicle_RD/icons/delete.svg"),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
