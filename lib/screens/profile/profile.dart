import 'package:auto_matic/config/config.dart';

class Profile extends StatelessWidget {
  Profile({super.key, this.username = "John Doe"});
  final String username;

  //Get this data from firebase
  final List<Map<String, dynamic>> vehicules = [
    {
      "apodo": "Mi carrito uwu",
      "modelo": "Sentra 2002",
      "state": vehiculeState.OK
    },
    {
      "apodo": "Carro 2",
      "modelo": "Sentra 2003",
      "state": vehiculeState.Danger
    },
    {
      "apodo": "Carro 3",
      "modelo": "Sentra 2006",
      "state": vehiculeState.Urgent
    },
    {
      "apodo": "Carro 4",
      "modelo": "Sentra 2006",
      "state": vehiculeState.Urgent
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Text(
              "Bienvenido $username",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const UserCard(),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  flex: 2,
                  child: Text(
                    "Lista de vehículos",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: ImportantTextButton(
                    text: "Añadir vehículo",
                    onPressed: () {},
                    iconPath: "assets/pages/profile/icons/add.svg"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: vehicules.length * 110,
            child: VehiculeList(
              vehicules: vehicules,
            ),
          ),
        ],
      ),
    );
  }
}
