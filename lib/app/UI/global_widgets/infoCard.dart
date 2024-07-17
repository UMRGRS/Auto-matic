import 'package:auto_matic/app/config/config.dart';

import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatefulWidget {
  const InfoCard(
      {super.key,
      required this.label,
      required this.text,
      this.leadingPath,
      this.trailingPath});
  final String label;
  final String text;
  final String? leadingPath;
  final String? trailingPath;

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
          leading: ShowLeading(),
          title: Column(
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  widget.label,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  widget.text,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          trailing: ShowTrailing()),
    );
  }

  Widget? ShowTrailing() {
    if (widget.trailingPath != null) {
      return IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            widget.trailingPath!,
            color: Colors.black54,
          ));
    } else {
      return null;
    }
  }

  Widget? ShowLeading() {
    if (widget.leadingPath != null) {
      return SvgPicture.asset(
        widget.leadingPath!,
        color: Colors.black54,
        height: 30,
      );
    } else {
      return null;
    }
  }
}
