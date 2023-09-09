import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_challenge/activity/activity_screen.dart';
import 'package:threads_challenge/post/post_timeline_screen.dart';
import 'package:threads_challenge/profile/profile_screen.dart';
import 'package:threads_challenge/search/search_screen.dart';

import 'package:threads_challenge/write/write_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  static const routeName = "/mainNav";
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    if (index == 2) {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        isScrollControlled: true,
        context: context,
        builder: (context) => const WriteScreen(photo: null),
      );
    } else {
      setState(() {});
      _selectedIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? AppBar(
              title: const FaIcon(
                FontAwesomeIcons.at,
                color: Colors.black,
                size: 40,
              ),
              elevation: 0,
              backgroundColor: const Color(0xfffafafa),
            )
          : null,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const PostTimelineScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const SearchScreen(),
          ),
          // Offstage(
          //   offstage: _selectedIndex != 2,
          //   child: const WriteScreen(),
          // ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const ActivityScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const ProfileScreen(),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => _onTap(value),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: const Color(0xfffafafa),
        indicatorColor: Colors.white,
        shadowColor: Colors.white,
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.house,
                color: Colors.grey,
              ),
              selectedIcon: FaIcon(FontAwesomeIcons.house),
              label: 'home'),
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.grey,
              ),
              selectedIcon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: 'searching'),
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.penToSquare,
                color: Colors.grey,
              ),
              selectedIcon: FaIcon(FontAwesomeIcons.penToSquare),
              label: 'add'),
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.grey,
              ),
              selectedIcon: FaIcon(FontAwesomeIcons.heart),
              label: 'likes'),
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.user,
                color: Colors.grey,
              ),
              selectedIcon: FaIcon(FontAwesomeIcons.user),
              label: 'user'),
        ],
      ),
    );
  }
}
