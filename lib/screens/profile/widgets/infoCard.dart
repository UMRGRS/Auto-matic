import 'package:auto_matic/config/config.dart';

import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatefulWidget {
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
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    Widget displayInfo = Text(widget.text);

    return SizedBox(
      width: widget.width,
      child: Card(
        color: Colors.white,
        child: ListTile(
            leading: SvgPicture.asset(
              widget.iconPath,
              color: Colors.black54,
            ),
            title: Column(
              children: [
                Text(
                  widget.label,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Builder(builder: (_){
                  return displayInfo;
                })
              ],
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/pages/profile/icons/edit.svg",
                  color: Colors.black54,
                ))),
      ),
    );
  }
}
