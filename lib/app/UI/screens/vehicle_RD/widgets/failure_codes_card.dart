import 'package:auto_matic/app/config/config.dart';

class FailureCodesCard extends StatefulWidget {
  const FailureCodesCard({super.key});

  @override
  State<FailureCodesCard> createState() => _FailureCodesCardState();
}

class _FailureCodesCardState extends State<FailureCodesCard> {
  @override
  Widget build(BuildContext context) {
    return Card(

        child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Codigos de falla",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 188,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: const Text("Codigo:"),
                    title: const Text("P02345"),
                    trailing: IconButton(icon: const Icon(Icons.search), onPressed: () {  },),
                  ),
                );
              },
            ),
          )
        ],
              ),
            ));
  }
}