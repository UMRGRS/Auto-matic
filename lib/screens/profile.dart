import 'package:auto_matic/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 600;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Flex(
        direction: isScreenWide ? Axis.horizontal : Axis.vertical,
        children: [
          Image.asset(
            "images/default.jpg",
            height: 200,
          ),
          ProfileCard()
        ],
      ),
    );
  }
}