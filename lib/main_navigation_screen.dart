import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_challenge/post/post_timeline_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const FaIcon(
          FontAwesomeIcons.apple,
          color: Colors.black,
          size: 40,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const PostTimelineScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const Center(
              child: Text("Searching"),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const Center(
              child: Text("Add"),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const Center(
              child: Text("Likes"),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const Center(
              child: Text("Profile"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => _onTap(value),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white,
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
