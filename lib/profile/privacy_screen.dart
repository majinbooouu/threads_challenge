import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrivacyScreen extends StatefulWidget {
  static const routeURL = "privacy";
  static const routeName = "privacy";
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        // foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).colorScheme.onError,
        title: const Text(
          "Privacy",
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
                SwitchListTile(
                  title: const Text(
                    'switchListTile',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                  secondary: FaIcon(
                    FontAwesomeIcons.lock,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.lock,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "ListTile + CupertinoSwitch",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: CupertinoSwitch(
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                    trackColor: Colors.grey,
                    activeColor: Colors.black,
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.at,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Mentions",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Everyone",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.bellSlash,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Muted",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.eyeSlash,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Hidden Words",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.peopleGroup,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Profiles you follow",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
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
            child: Column(
              children: [
                const ListTile(
                  title: Text(
                    "Other privacy settings",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "Some settings, like restrict, apply to both Threads and Instagram and can be managed on Instagram.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.circleXmark,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Blocked profiles",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.heartCircleXmark,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 26,
                  ),
                  title: const Text(
                    "Hide likes",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
