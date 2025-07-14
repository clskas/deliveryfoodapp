import 'package:deliveryfood/components/my_drawer_tile.dart';
import 'package:deliveryfood/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80.0,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          //home list tile
          MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          //settings list title
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          Spacer(),

          //logout list tile
          MyDrawerTile(text: "LOGOUT", icon: Icons.logout, onTap: () {}),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}
