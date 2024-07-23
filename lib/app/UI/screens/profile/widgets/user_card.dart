import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/config/config.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.session});
  final SessionController session;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: isScreenWide ? Axis.horizontal : Axis.vertical,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/default.jpg",
                )),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoCard(
                    label: "Nombre",
                    text: session.user!.displayName!,
                    leadingPath: "assets/pages/profile/icons/person.svg",
                    trailingPath: "assets/pages/profile/icons/edit.svg",
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  InfoCard(
                    label: "Correo electronico",
                    text: session.user!.email!,
                    leadingPath: "assets/pages/profile/icons/email.svg",
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  ImportantTextButton(
                    iconPath: "assets/pages/profile/icons/edit.svg",
                    text: "Cambiar contraseña",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
