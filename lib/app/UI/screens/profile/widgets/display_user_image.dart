import 'package:auto_matic/app/config/config.dart';

class DisplayUserImage extends StatelessWidget {
  const DisplayUserImage({super.key, required this.imageURL});
  final String? imageURL;
  @override
  Widget build(BuildContext context) {
    return imageURL == null
        ? Image.asset(
            "assets/images/default_user.png",
            height: 200,
          )
        : Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.network(
                imageURL!,
              ),
            ),
          );
  }
}
