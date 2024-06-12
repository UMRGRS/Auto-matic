library config.globals;

import 'package:flutter/material.dart';
export 'package:flutter/material.dart';

import 'package:auto_matic/screens/screens.dart';
export 'package:auto_matic/screens/screens.dart';

import 'package:auto_matic/components/components.dart';
export 'package:auto_matic/components/components.dart';

class Config{
    //Color palette
    static Color firstColor = const Color.fromRGBO(224, 221, 207, 1);
    static Color secondColor = const Color.fromRGBO(31, 1, 185, 1);
    static Color thirdColor = const Color.fromRGBO(153, 143, 199, 1);
    static Color fourthColor = const Color.fromRGBO(71, 68, 72, 1);
    static Color fifthColor = const Color.fromRGBO(186, 45, 11, 1);
    //Special colors
    static Color trafficLightGreen = const Color.fromRGBO(237, 102, 92, 1);
    static Color trafficLightYellow = const Color.fromRGBO(240, 220, 91, 1);
    static Color trafficLightRed = const Color.fromRGBO(79, 240, 141, 1);
}