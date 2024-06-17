import 'package:auto_matic/config/config.dart';

class VehiculeRD extends StatelessWidget {
  const VehiculeRD({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                      child: VehiculeDataCard(),
                    )),
                Expanded(
                    flex: 8,
                    child: Container(
                      color: Colors.purple,
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
