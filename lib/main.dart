import 'package:flutter/material.dart';
import 'package:threads_challenge/main_navigation_screen.dart';
import 'package:threads_challenge/profile/privacy_screen.dart';
import 'package:threads_challenge/profile/setting_screen.dart';

void main() {
  runApp(const ThreadsClone());
}

class ThreadsClone extends StatelessWidget {
  const ThreadsClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Threads Clone',
        routes: {
          MainNavigationScreen.routeName: (context) =>
              const MainNavigationScreen(),
          SettingScreen.routeName: (context) => const SettingScreen(),
          PrivacyScreen.routeName: (context) => const PrivacyScreen(),
        },
        initialRoute: MainNavigationScreen.routeName);
  }
}
