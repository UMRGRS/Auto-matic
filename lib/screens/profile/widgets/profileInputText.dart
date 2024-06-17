import 'package:auto_matic/config/config.dart';

class ProfileInputText extends StatelessWidget {
  const ProfileInputText({super.key, required this.info});
  final String info;
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.grey))),
      controller: TextEditingController(text: info),
    );
  }
}
