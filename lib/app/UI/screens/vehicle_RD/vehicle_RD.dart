import 'package:auto_matic/app/config/config.dart';

class VehicleRD extends StatelessWidget {
  const VehicleRD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          AppBarButton(
            text: "Perfil",
            onPressed: () {
              context.pushNamed('profile');
            },
          ),
          AppBarButton(
              text: "Cerrar sesión",
              onPressed: () {
                context.pushNamed('landing');
              },
              color: Config.fifthColor),
        ],
      ),
      body: Container(
        color: Config.firstColor,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: const VehicleIndicators(),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            SizedBox(
              height: 100,
            ),
            VehicleDataCard(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
