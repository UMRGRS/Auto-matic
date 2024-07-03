import 'package:auto_matic/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.actions});
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: SvgPicture.asset("assets/icons/logo.svg"),
      ),
      title: const Text(
        "Auto-matic",
        style: TextStyle(
            fontFamily: "Lobster", fontWeight: FontWeight.bold, fontSize: 30),
      ),
      actions: createActions(isScreenWide),
    );
  }

  List<Widget> createActions(isScreenWide) {
    if (isScreenWide && actions.length < 3) {
      return actions;
    } else if (actions.length == 1) {
      return actions;
    } else {
      return [
        MenuAnchor(
            builder: (BuildContext context, MenuController controller,
                Widget? child) {
              return IconButton(
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  icon: const Row(
                    children: [
                      Text(
                        "Menú",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ));
            },
            menuChildren: List<MenuItemButton>.generate(actions.length,
                (index) => MenuItemButton(child: actions[index]))),
      ];
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
