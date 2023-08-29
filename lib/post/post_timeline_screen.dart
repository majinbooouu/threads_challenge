import 'package:flutter/material.dart';
import 'package:threads_challenge/post/widgets/post_widget.dart';

var db = [
  {
    "userName": "majinbuu",
    "description": "I'm a happy dog",
    "time": "6m",
    "replies": 30,
    "likes": 999,
    "photos": 3,
  },
  {
    "userName": "문푸우",
    "description":
        "Please note that any attempts to manipulate the creator compensation program on this platform will result in account suspension",
    "time": "10m",
    "replies": 2,
    "likes": 2,
    "photos": 0,
  },
  {
    "userName": "목화",
    "description": "Getting ready for next Starship flight",
    "time": "20m",
    "replies": 50,
    "likes": 234,
    "photos": 5,
  },
  {
    "userName": "워니",
    "description":
        "Falcon 9’s first stage has landed on the Just Read the Instructions droneship",
    "time": "2m",
    "replies": 2,
    "likes": 200,
    "photos": 0,
  },
  {
    "userName": "토치",
    "description":
        "Starlink antennas use an internally developed, electronically steered phased array tight beam that is more advanced than the best military technology",
    "time": "1h",
    "replies": 300,
    "likes": 1000,
    "photos": 3,
  },
  {
    "userName": "미우미우",
    "description":
        "I recommend strongly recommend posting your podcast on X. It’s easy and will get incredible distribution!",
    "time": "2h",
    "replies": 2,
    "likes": 1,
    "photos": 2,
  },
  {
    "userName": "욱킹",
    "description":
        "We’re being super careful with Notes to maximize accuracy. Everything is open source and criticism is always welcome.",
    "time": "3h",
    "replies": 10,
    "likes": 4,
    "photos": 0,
  },
  {
    "userName": "ds1svg",
    "description":
        "When we pilot Community Notes in a new country, notes initially have limited visibility while we measure how helpful those notes are to people from different perspectives. Today, 23 countries across Europe are moving out of this pilot phase, and their notes will now be shown to everyone on X. Thank you to all of our new contributors, whose notes (in many different languages) have been found helpful within and beyond borders.",
    "time": "4h",
    "replies": 200,
    "likes": 2000,
    "photos": 1,
  },
  {
    "userName": "잌하이",
    "description":
        "Facebook is manipulating the public almost everywhere on Earth.",
    "time": "4h",
    "replies": 2,
    "likes": 4,
    "photos": 1,
  },
  {
    "userName": "지수",
    "description":
        "Pretty fun blocking people who complain that blocking is going away.",
    "time": "5h",
    "replies": 13,
    "likes": 43,
    "photos": 0,
  },
];

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
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => PostWidget(
          userName: db[index]["userName"] as String,
          description: db[index]["description"] as String,
          time: db[index]["time"] as String,
          replies: db[index]["replies"] as int,
          likes: db[index]["likes"] as int,
          photos: db[index]["photos"] as int,
        ),
      ),
    );
  }
}
