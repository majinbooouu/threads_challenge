import 'package:flutter/material.dart';
import 'package:threads_challenge/main_navigation_screen.dart';

void main() {
  runApp(const ThreadsClone());
}

class ThreadsClone extends StatelessWidget {
  const ThreadsClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Threads Clone',
      home: MainNavigationScreen(),
    );
  }
}
