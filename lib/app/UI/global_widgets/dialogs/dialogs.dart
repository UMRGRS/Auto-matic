import 'package:auto_matic/app/config/config.dart';

abstract class Dialogs {
  static Future<void> showAlert({
    required BuildContext context,
    String? title,
    String? content,
    String okText = "OK",
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: title != null
            ? Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            : null,
        content: content != null ? Text(content) : null,
        actions: [
          CupertinoDialogAction(
            onPressed: () => context.pop(),
            child: Text(
              okText,
            ),
          ),
        ],
      ),
    );
  }
}
