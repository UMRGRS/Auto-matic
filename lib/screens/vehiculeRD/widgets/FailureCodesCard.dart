import 'package:auto_matic/config/config.dart';

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
          Text(
            "Codigos de falla",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Text("Codigo:"),
                    title: Text("P02345"),
                    trailing: IconButton(icon: Icon(Icons.search), onPressed: () {  },),
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
