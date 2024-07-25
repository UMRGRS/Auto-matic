import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/UI/screens/profile/widgets/update_name_pop_up.dart';
import 'package:auto_matic/app/UI/screens/profile/widgets/update_password_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key, required this.session});
  final SessionController session;

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                "Bienvenido ${widget.session.user!.displayName}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flex(
              mainAxisSize: MainAxisSize.min,
              direction: isScreenWide ? Axis.horizontal : Axis.vertical,
              children: [
                DisplayUserImage(
                  imageURL: widget.session.user!.photoURL,
                ),
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
                        text: widget.session.user!.displayName!,
                        leadingPath: "assets/pages/profile/icons/person.svg",
                        trailing: IconButton(
                          onPressed: () async {
                            await UpdateNamePopUp.showUpdateNamePopUp(context);
                            setState(() {});
                          },
                          icon: SvgPicture.asset(
                            "assets/pages/profile/icons/edit.svg",
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      InfoCard(
                        label: "Correo electronico",
                        text: widget.session.user!.email!,
                        leadingPath: "assets/pages/profile/icons/email.svg",
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      ImportantTextButton(
                        iconPath: "assets/pages/profile/icons/edit.svg",
                        text: "Cambiar contraseña",
                        onPressed: () async => await UpdatePasswordPopUp.showUpdatePasswordPopUp(context),
                      )
                    ],
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
