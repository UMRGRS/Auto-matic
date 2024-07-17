import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.black, width: 2.0)),
        color: const Color(0xff998fc7),
        child: ListTile(
            leading: SvgPicture.asset(widget.imagen, height: 50,),
            title: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.titulo,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  Text(
                    widget.texto,
                    style: const TextStyle(fontSize: 18 ),
                  ),
                ],
              ),
            ),
        ));
  }
}
