import 'package:auto_matic/config/config.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key,
      this.firstname = "John",
      this.lastname = "Doe",
      this.email = "johnDoe@gmail.com"});
  final String firstname;
  final String lastname;
  final String email;
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: isScreenWide ? Axis.horizontal: Axis.vertical,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/default.jpg",
                )),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoCard(
                        width: double.infinity,
                        label: "Nombre",
                        text: firstname),
                    InfoCard(
                        width: double.infinity,
                        label: "Apellido",
                        text: lastname),
                    InfoCard(
                      width: double.infinity,
                      label: "Correo electronico",
                      text: email,
                      iconPath:
                      "assets/pages/profile/icons/email.svg",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
