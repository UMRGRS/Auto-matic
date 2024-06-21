import 'package:auto_matic/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatefulWidget {
  const InfoCard(
      {super.key,
      required this.width,
      required this.label,
      required this.text,
      this.iconPath = "assets/pages/profile/icons/person.svg",
      this.trailingPath});
  final double width;
  final String label;
  final String text;
  final String iconPath;
  final String? trailingPath;

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }

  Widget ShowTrailing() {
    if (widget.trailingPath != null) {
      return IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            widget.trailingPath!,
            color: Colors.black54,
          ));
    } else {
      return SizedBox(
        width: 0,
        height: 0,
      );
    }
  }
}
