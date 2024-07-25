import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VehicleRD extends StatelessWidget {
  const VehicleRD({super.key, required this.documentSnapshot});
  //with this we do everything c:
  final DocumentSnapshot documentSnapshot;
  @override
  Widget build(BuildContext context) {
    print(documentSnapshot.data().toString());
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          AppBarButton(
            text: "Perfil",
            onPressed: () {
              context.pushReplacementNamed('profile');
            },
          ),
          AppBarButton(
              text: "Cerrar sesión",
              onPressed: () async{
                ProgressDialog.show(context);
                await sessionProvider.read.signOut();
                Navigator.pop(context);
                context.go("/login");
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
