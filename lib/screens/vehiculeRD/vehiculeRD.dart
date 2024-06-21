import 'package:auto_matic/config/config.dart';

class VehiculeRD extends StatelessWidget {
  const VehiculeRD({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      height: constraints.maxHeight,
                      child: const VehiculeDataCard()),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 8,
                  child: SizedBox(
                    height: constraints.maxHeight,
                    child: const VehiculeIndicators(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
