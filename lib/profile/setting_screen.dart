import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:threads_challenge/profile/privacy_screen.dart';

class SettingScreen extends StatelessWidget {
  static const routeURL = "/setting";
  static const routeName = "setting";
  const SettingScreen({super.key});

  void _onPrivacyTap(BuildContext context) {
    context.pushNamed(PrivacyScreen.routeName);
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Log out"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        // foregroundColor: Theme.of(context).colorScheme.background,
        backgroundColor: Theme.of(context).colorScheme.onError,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.personCirclePlus,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Follow and invite friends",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.bell,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.lock,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: GestureDetector(
                    onTap: () => _onPrivacyTap(context),
                    child: const Text(
                      "Privacy",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.user,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.hand,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.database,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "About",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: TextButton(
              onPressed: () => _showLogoutDialog(context),
              child: const Text(
                "Log out",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
