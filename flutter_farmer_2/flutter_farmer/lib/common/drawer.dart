import 'package:flutter/material.dart';
import 'package:flutter_farmer/pages/themePage.dart';
import '../pages/firebasePage.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: ListView(children: buildMenuItemsList(context)),
    );
  }
}

List<Widget> buildMenuItemsList(BuildContext context) {
  List<Widget> menuItems = [];
  menuItems.add(const DrawerHeader(
      child: Text(
    "Explore Options",
    style: TextStyle(fontSize: 30),
  )));

  Set<String> menuTitles = {
    "Explore with Firebase",
    "Theme",
  };

  menuTitles.forEach((element) {
    menuItems.add(ListTile(
      title: Text(
        element,
        style: TextStyle(fontSize: 20),
      ),
      onTap: () {
        Widget screen = Container();

        switch (element) {
          case "Explore with Firebase":
            screen = firebasePage();
            break;
          case "Theme":
            screen = themePage();
          default:
        }

        Navigator.of(context).pop();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screen));
      },
    ));
  });

  return menuItems;
}