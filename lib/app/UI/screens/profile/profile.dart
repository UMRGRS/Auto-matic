import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter/foundation.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    final session = sessionProvider.read;
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          AppBarButton(
            text: "Cerrar sesión",
            onPressed: () async {
              ProgressDialog.show(context);
              await sessionProvider.read.signOut();
              Navigator.pop(context);
              context.go("/login");
            },
            color: Config.fifthColor,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Config.firstColor,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  children: [
                    UserCard(
                      session: session,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                            flex: 2,
                            child: Text(
                              "Lista de vehículos",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          showAddCar(context),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      width: constraints.maxWidth,
                      child: const VehicleList(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
  Widget showAddCar(BuildContext context) {
    return kIsWeb
        ? Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: ImportantTextButton(
                  text: "Añadir vehículo",
                  onPressed: () {
                    context.pushNamed('register_car');
                  },
                  iconPath: "assets/pages/profile/icons/add.svg"),
            ),
          )
        : const SizedBox.shrink();
  }
}
