import 'package:auto_matic/config/config.dart';
import 'package:flutter/cupertino.dart';

class VehiculeIndicators extends StatelessWidget {
  const VehiculeIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Indicadores", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        //RPM & KPM / TEMP & BATTERY
        Row(
          children: [
            Expanded(child: RPMKPM()),
            Expanded(child: TempBattery()),
          ],
        ),
        // FAILURE CODES / SERVICES
        Row(
          children: [
            Expanded(child: ServicesCard()),
            Expanded(child: FailureCodesCard())
          ],
        ),
      ],
    );
  }
}
