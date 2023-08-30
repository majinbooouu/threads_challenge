import 'package:flutter/material.dart';
import 'package:threads_challenge/post/report_screen.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  void _onReportTap(BuildContext context) {
    Navigator.of(context).pop();
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) => const ReportScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              15,
            ),
            topRight: Radius.circular(
              15,
            ),
          ),
          color: Colors.white),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 20,
                  ),
                  child: Text(
                    "Unfollow",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(23),
                    bottomRight: Radius.circular(23),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 20,
                  ),
                  child: Text(
                    "Mute",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 20,
                  ),
                  child: Text(
                    "Hide",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _onReportTap(context),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(23),
                      bottomRight: Radius.circular(23),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                      left: 20,
                    ),
                    child: Text(
                      "Report",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
