import 'package:auto_matic/config/config.dart';

class Landingcard extends StatefulWidget {
  const Landingcard(
      {super.key,
      required this.titulo,
      required this.texto,
      required this.imagen});
  final String titulo;
  final String texto;
  final String imagen;

  @override
  State<Landingcard> createState() => _LandingcardState();
}

class _LandingcardState extends State<Landingcard> {
  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: const Color(0xff998fc7),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Image.asset(widget.imagen),
          title: Text(widget.titulo),
          subtitle: Text(widget.texto),
        ),
      ),
    );
  }
}
