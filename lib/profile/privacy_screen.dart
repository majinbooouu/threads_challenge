import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrivacyScreen extends StatefulWidget {
  static const routeName = "/privacy";
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
        foregroundColor: Colors.black,
        backgroundColor: const Color(
          0xfffafafa,
        ),
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
                  secondary: const FaIcon(
                    FontAwesomeIcons.lock,
                    color: Colors.black,
                  ),
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.lock,
                    color: Colors.black,
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
                const ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.at,
                    color: Colors.black,
                    size: 26,
                  ),
                  title: Text(
                    "Mentions",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: Row(
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
                const ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.bellSlash,
                    color: Colors.black,
                    size: 26,
                  ),
                  title: Text(
                    "Muted",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.eyeSlash,
                    color: Colors.black,
                    size: 26,
                  ),
                  title: Text(
                    "Hidden Words",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.peopleGroup,
                    color: Colors.black,
                    size: 26,
                  ),
                  title: Text(
                    "Profiles you follow",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                ListTile(
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
                    color: Colors.black,
                    size: 26,
                  ),
                  title: Text(
                    "Blocked profiles",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.heartCircleXmark,
                    color: Colors.black,
                    size: 26,
                  ),
                  title: Text(
                    "Hide likes",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: FaIcon(
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
