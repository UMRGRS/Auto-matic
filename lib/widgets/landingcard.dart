import 'package:auto_matic/config/config.dart';

class Landingcard extends StatefulWidget {
  const Landingcard({super.key, required this.titulo, required this.texto});
  final String titulo;
  final String texto;

  @override
  State<Landingcard> createState() => _LandingcardState();
}

class _LandingcardState extends State<Landingcard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card.filled( color: Color(0xff998fc7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.developer_board),
              title: Text(widget.titulo),
              subtitle: Text(widget.texto),
            ),
          ],
        ),
      ),
    );
  }
}


