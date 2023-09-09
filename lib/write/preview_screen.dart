import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PreviewScreen extends StatefulWidget {
  final XFile photo;

  const PreviewScreen({
    super.key,
    required this.photo,
  });

  @override
  State<PreviewScreen> createState() => _VideoPreviewScreenState();
}

class _VideoPreviewScreenState extends State<PreviewScreen> {
  @override
  void initState() {
    super.initState();

    print(widget.photo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Preview photo'),
      ),
      body: Container(
        child: Image.file(
          File(widget.photo.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
