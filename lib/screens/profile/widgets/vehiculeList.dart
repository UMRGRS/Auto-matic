import 'package:auto_matic/config/config.dart';

class VehiculeList extends StatelessWidget {
  const VehiculeList({super.key, required this.vehicules});
  final List<Map<String, dynamic>> vehicules;
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return ListView.builder(
        itemCount: vehicules.length,
        itemBuilder: (BuildContext context, index) {
          return CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: SizedBox(
              height: 110,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: responsive.wp(20),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/default.jpg",
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Apodo",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "${vehicules[index]["apodo"]}",
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: responsive.wp(1),
                      ),
                      Expanded(
                        flex: 3,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Column(
                            children: [
                              const Text(
                                "Modelo",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${vehicules[index]["modelo"]}",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text("Estado",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                              StateIndicator(state: vehicules[index]["state"])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
