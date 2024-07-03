import 'package:auto_matic/config/config.dart';

class VehiculeRD extends StatelessWidget {
  const VehiculeRD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          AppBarButton(
            text: "Perfil",
            onPressed: () {},
          ),
          AppBarButton(
            text: "Inicio",
            onPressed: () {},
          ),
          AppBarButton(
              text: "Cerrar sesión",
              onPressed: () {},
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
                child: const VehiculeIndicators(),
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
            VehiculeDataCard(),
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
