import 'package:auto_matic/app/UI/screens/vehicle_RD/widgets/code_definition_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FailureCodesCard extends StatelessWidget {
  const FailureCodesCard({super.key, required this.stream});
  final Stream<DocumentSnapshot> stream;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Algo salió mal, intenta más tarde");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Config.secondColor,
              ),
            ],
          );
        }
        return Builder(builder: (context) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Códigos de falla",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 248,
                  child: showFailureCodesList(data['failureCodes']),
                )
              ],
            ),
          ));
        });
      },
    );
  }
  Widget showFailureCodesList(List<dynamic> failureCodes) {
    if (failureCodes.isEmpty) {
      return ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            child: ListTile(
              title: Text("No hay códigos de falla actualmente."),
            ),
          );
        },
      );
    } else {
      return ListView.builder(
        itemCount: failureCodes.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: const Text(
                "Código:",
                style: TextStyle(fontSize: 15),
              ),
              title: Text(failureCodes[index]),
              trailing: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () async => await
                    showFailureCodeDefinition(context, failureCodes[index]),
              ),
            ),
          );
        },
      );
    }
  }
}
