import 'dart:io';

import 'package:camera/camera.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_challenge/main_navigation_screen.dart';
import 'package:threads_challenge/write/video_recording_screen.dart';

class WriteScreen extends StatefulWidget {
  final XFile? photo;
  const WriteScreen({
    super.key,
    required this.photo,
  });

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  late final Faker _faker;
  late final NetworkImage _networkImage = NetworkImage(
    _faker.image.image(
      keywords: ['man'],
      random: true,
      width: 1280,
      height: 960,
    ),
  );

  bool _isTextFilled = false;

  final TextEditingController _textEditingController = TextEditingController();

  void _onCancelTap(BuildContext context) {
    Navigator.of(context).pushNamed(
      MainNavigationScreen.routeName,
    );
  }

  void _onClipTap(BuildContext context) {
    Navigator.of(context).pushNamed(
      VideoRecordingScreen.routeName,
    );
  }

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
    _faker = Faker();
  }

  void _onTextChanged() {
    setState(() {
      _isTextFilled = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 820,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xfffafafa),
            automaticallyImplyLeading: false,
            leadingWidth: 100,
            leading: GestureDetector(
              onTap: () => _onCancelTap(context),
              child: Transform.translate(
                offset: const Offset(10, 25),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            toolbarHeight: 70,
            title: const Text(
              "New thread",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.5),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
          ),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(backgroundImage: _networkImage),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "nico",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                controller: _textEditingController,
                                decoration: const InputDecoration(
                                  hintText: "Start a thread...",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: -20,
                                  ),
                                ),
                              ),
                              widget.photo != null
                                  ? FractionallySizedBox(
                                      widthFactor: 1,
                                      child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                        height: 300,
                                        child: Image.file(
                                          File(widget.photo!.path),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () => _onClipTap(context),
                                      child: const FaIcon(
                                        FontAwesomeIcons.link,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                            ),
                            Positioned(
                              left: 9,
                              child: CircleAvatar(
                                backgroundImage: _networkImage,
                                radius: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: SafeArea(
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Anyone can play",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: _isTextFilled ? () {} : null,
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )),
                            child: const Text(
                              "Next",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
