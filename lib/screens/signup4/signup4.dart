import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/screens/signup4/widgets/accesswithsocial.dart';
import 'package:auto_matic/screens/signup4/widgets/createaccountsection.dart';

class SinguUp4 extends StatelessWidget {
  const SinguUp4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sección de creación de cuenta
                Expanded(
                  flex: 2,
                  child: CreateAccountSection(),
                ),
                // Sección de acceso con redes sociales
                Expanded(
                  flex: 1,
                  child: AccessWithSocialMediaSection(),
                ),
                //ConstructorBody()
              ]
          ),
          TimelineWidget(currentPage: 0)
        ],
      ),
    );
  }
}
