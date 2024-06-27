import 'package:auto_matic/config/config.dart';

// Sección de acceso con redes sociales
class AccessWithSocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Accede con', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Config.secondColor)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              color: Colors.blue,
              child: Center(child: Text('Redes Sociales')),
            ),
            SizedBox(width: 20),
            Container(
              width: 60,
              height: 60,
              color: Colors.green,
              child: Center(child: Text('Google')),
            ),
          ],
        ),
      ],
    );
  }
}
