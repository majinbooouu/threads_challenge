import 'package:flutter/material.dart';

void main() {
  runApp(const ThreadsClone());
}

class ThreadsClone extends StatelessWidget {
  const ThreadsClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Threads Clone',
      home: Scaffold(),
    );
  }
}
