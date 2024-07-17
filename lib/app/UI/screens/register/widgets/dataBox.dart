import 'package:auto_matic/app/config/config.dart';

class Databox extends StatefulWidget {
  const Databox({super.key});

  @override
  _DataboxState createState() => _DataboxState();
}

class _DataboxState extends State<Databox> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Text(
                "Modelo",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Sentra",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(height: 5),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              leading: Text(
                "Fabricante",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Nissan",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(height: 5),
            ListTile(
              leading: Text(
                "Año",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "2002",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(height: 5),
            ListTile(
              leading: Text(
                "VIN",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "ZPBUA1ZL9KLA00848",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
