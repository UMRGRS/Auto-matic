import 'package:auto_matic/config/config.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, this.username = "John Doe"});
  final String username;
  @override
  State<Profile> createState() => _ProfileState(username);
}

class _ProfileState extends State<Profile> {
  _ProfileState(this.username);
  final String username;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Bienvenido ${username}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              UserCard(),
            ],
          ),
        ),
      ),
    );
  }
}
