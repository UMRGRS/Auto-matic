import 'package:auto_matic/config/config.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            child: ListTile(
              leading: SvgPicture.asset(
                  "assets/pages/vehiculeRD/icons/temperature.svg"),
              title: const Text(
                "Temperatura",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              subtitle: FAProgressBar(
                maxValue: 150,
                border: Border.all(width: 0.1),
                currentValue: 100,
                displayText: ' °C',
                displayTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
                progressColor: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset(
                  "assets/pages/vehiculeRD/icons/carBattery.svg"),
              title: const Text(
                "Bateria",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              subtitle: FAProgressBar(
                maxValue: 14,
                border: Border.all(width: 0.1),
                currentValue: 13.1,
                displayText: ' V',
                displayTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
                progressColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
