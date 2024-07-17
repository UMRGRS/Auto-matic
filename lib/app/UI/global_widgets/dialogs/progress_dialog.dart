import 'package:auto_matic/app/config/config.dart';

abstract class ProgressDialog {
  static void show(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => WillPopScope(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black12,
              child: const Center(
                  child: CircularProgressIndicator(
                color: Config.secondColor,
              )),
            ),
            onWillPop: () async => false));
  }
}
