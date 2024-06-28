import 'package:auto_matic/config/config.dart';

class Datebox extends StatefulWidget {
  const Datebox({super.key});

  @override
  State<Datebox> createState() => _DateboxState();
}

class _DateboxState extends State<Datebox> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row( children: [Text("data")],)
        ],
      ),
    );
  }
}
