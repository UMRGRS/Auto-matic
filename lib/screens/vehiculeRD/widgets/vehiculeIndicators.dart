import 'package:auto_matic/config/config.dart';

class VehiculeIndicators extends StatelessWidget {
  const VehiculeIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Padding(
      padding: EdgeInsets.all(8.0),
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
                text: "Datos del vehiculo",
                onPressed: () => Scaffold.of(context).openDrawer(),
                iconPath: "assets/pages/vehiculeRD/icons/car.svg",
              )
            ],
          ),
          //RPM & KPM / TEMP & BATTERY
          const Column(
            children: [
              TempBattery(),
              RPMKPM(),
            ],
          ),
          // FAILURE CODES / SERVICES
          Builder(builder: (_){
            if(isScreenWide){
              return const Row(
                children: [
                  Expanded(child: ServicesCard()),
                  Expanded(child: FailureCodesCard())
                ],
              );
            }
            else{
              return const Column(
                children: [
                  ServicesCard(),
                  FailureCodesCard()
                ],
              );
            }
          })
        ],
      ),
    );
  }
}
