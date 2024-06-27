import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/screens/signup4/widgets/accesswithsocial.dart';
import 'package:auto_matic/screens/signup4/widgets/createaccountsection.dart';

class SinguUp4 extends StatelessWidget {
  const SinguUp4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Config.firstColor, // Fondo blanco
      padding: EdgeInsets.all(16.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Sección de creación de cuenta
            Expanded(
              flex: 2,
              child: CreateAccountSection(),
            ),
            SizedBox(width: 40),
            // Sección de acceso con redes sociales
            Expanded(
              flex: 1,
              child: AccessWithSocialMediaSection(),
            ),
            Expanded(
              flex: 2,
              child: TimelineWidget(currentPage: 4),
            ),
            SizedBox(width: 40),
            //ConstructorBody()
          ]
      ),
    );
  }
}
