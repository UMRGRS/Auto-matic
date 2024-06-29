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
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 2.0), // Define el borde de la card
        borderRadius: BorderRadius.circular(4.0), // Define el radio de los bordes
      ),
      child: Column(
        children: [
          Row( children: [Text("Modelo"), SizedBox(width: 50,),Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")],),
          SizedBox(height: 20,),
          Row(children: [Text("Fabricante"),SizedBox(width: 50,),Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxx")],),
          SizedBox(height: 20,),
          Row(children: [Text("Año"),SizedBox(width: 50,),Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")],),
          SizedBox(height: 20,),
          Row(children: [Text("VIM"),SizedBox(width: 50,),Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")],),

        ],
      ),
    );
  }
}
