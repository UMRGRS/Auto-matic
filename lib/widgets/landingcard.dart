import 'package:auto_matic/config/config.dart';

class Landingcard extends StatefulWidget {
  const Landingcard({super.key, required this.titulo, required this.texto, required this.imagen});
  final String titulo;
  final String texto;
  final String imagen;


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
              leading: Image.asset(widget.imagen),
              title: Text(widget.titulo),
              subtitle: Text(widget.texto),
            ),
          ],
        ),
      ),
    );
  }
}


