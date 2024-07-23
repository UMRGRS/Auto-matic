import 'package:auto_matic/app/config/config.dart';

class VehicleIndicators extends StatelessWidget {
  const VehicleIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
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
                text: "Datos del vehiculo",
                onPressed: () => Scaffold.of(context).openDrawer(),
                iconPath: "assets/pages/vehicle_RD/icons/car.svg",
              )
            ],
          ),
          //RPM & KPM / TEMP & BATTERY
          const Column(
            children: [
              TempBattery(),
              SizedBox(height: 10,),
              RPMKPM(),
            ],
          ),
          const SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
