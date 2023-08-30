import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: const Color(0xfffafafa),
          title: const Text(
            "Report",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: const [
            ListTile(
              contentPadding: EdgeInsets.only(
                left: 10,
                top: 15,
                bottom: 15,
              ),
              title: Padding(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  "Why are you reporting this thread?",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              subtitle: Text(
                "Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait.",
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "I just don't like it",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "It's unlawful content under NetzDG",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "It's spam",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "Hate speech or symbols",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "Nudity or sexual activity",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "Sexual Contents",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//           children: [
//             const Text(
//               "Why are you reporting this thread?",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait.",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.grey.shade700,
//               ),
//             ),
//           ],
//         ),


