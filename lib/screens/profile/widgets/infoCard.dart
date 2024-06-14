import 'package:auto_matic/config/config.dart';

import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.width,
      required this.label,
      required this.text,
      this.iconPath = "assets/pages/profile/icons/person.svg"});
  final double width;
  final String label;
  final String text;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Card(
        color: Colors.white,
        child: ListTile(
            leading: SvgPicture.asset(
              iconPath,
              color: Colors.black54,
            ),
            title: Column(
              children: [
                Text(
                  label,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(text)
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode,
                color: Colors.black54,
              ),
            )),
      ),
    );
  }
}
