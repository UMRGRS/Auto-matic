import 'package:auto_matic/app/config/config.dart';

import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.label,
      required this.text,
      this.leadingPath,
      this.trailing});
  final String label;
  final String text;
  final String? leadingPath;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
          leading: showLeading(),
          title: Column(
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  label,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          trailing: trailing,),
    );
  }

  Widget? showLeading() {
    if (leadingPath != null) {
      return SvgPicture.asset(
        leadingPath!,
        color: Colors.black54,
        height: 30,
      );
    } else {
      return null;
    }
  }
}
