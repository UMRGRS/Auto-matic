library config.globals;

import 'package:flutter/material.dart';
export 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
export 'package:flutter/cupertino.dart' hide RefreshCallback;

import 'package:auto_matic/app/UI/screens/screens.dart';
export 'package:auto_matic/app/UI/screens/screens.dart';

import 'package:auto_matic/app/UI/global_widgets/widgets.dart';
export 'package:auto_matic/app/UI/global_widgets/widgets.dart';

import 'package:auto_matic/app/UI/utils/utils.dart';
export 'package:auto_matic/app/UI/utils/utils.dart';

import 'package:auto_matic/app/UI/routes/routes.dart';
export 'package:auto_matic/app/UI/routes/routes.dart';

import 'package:go_router/go_router.dart';
export 'package:go_router/go_router.dart';

enum vehiculeState { OK, Danger, Urgent }

class Config {
  //Color palette
  static const Color firstColor = Color.fromRGBO(224, 221, 207, 1);
  static const Color secondColor = Color.fromRGBO(31, 1, 185, 1);
  static const Color thirdColor = Color.fromRGBO(153, 143, 199, 1);
  static const Color fourthColor = Color.fromRGBO(71, 68, 72, 1);
  static const Color fifthColor = Color.fromRGBO(186, 45, 11, 1);
  static const Color confirmGreen = Color.fromRGBO(32, 133, 69, 1);

  static Map<vehiculeState, Map<String, dynamic>> VehiculeStates = {
    vehiculeState.OK: {
      "text": "OK",
      "iconPath": "assets/pages/profile/icons/check.svg",
      "color": const Color.fromRGBO(79, 240, 141, 1)
    },
    vehiculeState.Danger: {
      "text": "¡Atencion!",
      "iconPath": "assets/pages/profile/icons/danger.svg",
      "color": const Color.fromRGBO(240, 220, 91, 1),
    },
    vehiculeState.Urgent: {
      "text": "¡Peligro!",
      "iconPath": "assets/pages/profile/icons/cross.svg",
      "color": const Color.fromRGBO(237, 102, 92, 1),
    },
  };
}
