import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/screens/signup3/widgets/datebox.dart';

class Signup3 extends StatefulWidget {
  const Signup3({super.key});

  @override
  State<Signup3> createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [

                Text(
                  "Confirma los datos",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Datebox(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 200,
                  child: TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                      backgroundColor: Config.sixColor,
                    ),
                    child: Text(
                      "Continuar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 200,
                  child: TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(71,68, 72, 1),
                    ),
                    child: Text(
                      "Corregir VIM",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
