import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:threads_challenge/write/preview_screen.dart';
import 'package:threads_challenge/write/write_screen.dart';

class VideoRecordingScreen extends StatefulWidget {
  static const routeName = "/recording";
  const VideoRecordingScreen({super.key});

  @override
  State<VideoRecordingScreen> createState() => _VideoRecordingScreenState();
}

class _VideoRecordingScreenState extends State<VideoRecordingScreen>
    with TickerProviderStateMixin {
  bool _hasPermission = false;

  late final AnimationController _buttonAnimationController =
      AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );

  late final Animation<double> _buttonAnimation =
      Tween(begin: 1.0, end: 1.3).animate(_buttonAnimationController);

  // late final AnimationController _progressAnimationController =
  //     AnimationController(
  //   vsync: this,
  //   duration: const Duration(seconds: 10),
  //   lowerBound: 0.0,
  //   upperBound: 1.0,
  // );

  late final CameraController _cameraController;

  Future<void> initCamera() async {
    final cameras = await availableCameras();

    if (cameras.isEmpty) {}

    _cameraController = CameraController(
      cameras[0],
      ResolutionPreset.ultraHigh,
      enableAudio: false,
    );

    await _cameraController.initialize();
    await _cameraController.prepareForVideoRecording();
  }

  Future<void> initPermissions() async {
    final cameraPermission = await Permission.camera.request();
    final micPermission = await Permission.microphone.request();

    final cameraDenied =
        cameraPermission.isDenied || cameraPermission.isPermanentlyDenied;

    final micDenied =
        micPermission.isDenied || micPermission.isPermanentlyDenied;

    if (!cameraDenied && !micDenied) {
      _hasPermission = true;
      await initCamera();
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    initPermissions();
    // _progressAnimationController.addListener(() {
    //   setState(() {});
    // });
    // _progressAnimationController.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     _stopRecording();
    //   }
    // });
  }

  Future<void> _starRecording(TapDownDetails _) async {
    if (_cameraController.value.isRecordingVideo) return;

    await _cameraController.startVideoRecording();

    _buttonAnimationController.forward();
    // _progressAnimationController.forward();
  }

  Future<void> _stopRecording() async {
    if (!_cameraController.value.isRecordingVideo) return;

    _buttonAnimationController.reverse();
    // _progressAnimationController.reset();
    final video = await _cameraController.stopVideoRecording();

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => VideoPreviewScreen(
    //       video: video,
    //     ),
    //   ),
    // );
  }

  Future<void> _takePhoto() async {
    _buttonAnimationController.forward();
    final photo = await _cameraController.takePicture();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WriteScreen(
          photo: photo,
        ),
      ),
    );
  }

  Future<void> _onPickImagePressed() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (image == null) return;

    if (!mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WriteScreen(
          photo: image,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _progressAnimationController.dispose();
    _buttonAnimationController.dispose();
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: !_hasPermission || !_cameraController.value.isInitialized
            ? const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Initializing...",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircularProgressIndicator.adaptive()
                ],
              )
            : Stack(
                alignment: Alignment.center,
                children: [
                  CameraPreview(_cameraController),
                  Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          // onTapDown: _starRecording,
                          // onTapUp: (details) => _stopRecording(),
                          onTap: _takePhoto,
                          child: ScaleTransition(
                            scale: _buttonAnimation,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // SizedBox(
                                //   width: 94,
                                //   height: 94,
                                //   child: CircularProgressIndicator(
                                //     color: Colors.red.shade400,
                                //     strokeWidth: 6,
                                //     value: _progressAnimationController.value,
                                //   ),
                                // ),
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red.shade400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: IconButton(
                                    onPressed: _onPickImagePressed,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.image,
                                      color: Colors.white,
                                    ))))
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
