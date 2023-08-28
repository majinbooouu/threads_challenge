import 'package:flutter/material.dart';
import 'package:threads_challenge/post/widgets/post_widget.dart';

class PostTimelineScreen extends StatefulWidget {
  const PostTimelineScreen({super.key});

  @override
  State<PostTimelineScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostTimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => const PostWidget(),
      ),
    );
  }
}
