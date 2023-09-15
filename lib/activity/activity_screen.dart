import 'package:flutter/material.dart';
import 'package:threads_challenge/activity/widgets/widgets/Activity_tile_widget.dart';

var db = [
  {
    "username": "henrry",
    "activiteText": "Mentioned you",
    "activities": "Count me in!",
  },
  {
    "username": "미우미우",
    "activiteText": "Starting out somthing",
    "activities":
        "Here's a thread you should follow if you love botany @jame_mobbin",
  },
  {
    "username": "문푸우",
    "activiteText": "Mentioned you",
    "activities": "",
  },
  {
    "username": "Jun",
    "activiteText": "Followed you",
    "activities": "⛔️",
  },
  {
    "username": "nico",
    "activiteText": "Starting out somthing",
    "activities":
        "hello everybody, hello everybody, hello everybody, hello everybody",
  },
  {
    "username": "Lynn",
    "activiteText": "Mentioned you",
    "activities": "say something",
  },
  {
    "username": "잌하이",
    "activiteText": "Followed you",
    "activities":
        "Here's a thread you should follow if you love botany @jame_mobbin",
  },
  {
    "username": "욱킹",
    "activiteText": "Followed you",
    "activities":
        "Here's a thread you should follow if you love botany @jame_mobbin",
  },
  {
    "username": "토치",
    "activiteText": "Mentioned you",
    "activities":
        "Here's a thread you should follow if you love botany @jame_mobbin",
  },
  {
    "username": "주스",
    "activiteText": "Starting out somthing",
    "activities":
        "Here's a thread you should follow if you love botany @jame_mobbin",
  },
];

var tabs = ["All", "Replies", "Mentions", "Repost", "verified"];

class ActivityScreen extends StatefulWidget {
  static const routeName = "activity";
  static const routeURL = "/activity";
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int _selectedIndex = 0;
  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 65,
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.background,
            leadingWidth: 200,
            leading: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                "Activity",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.inverseSurface,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            bottom: TabBar(
                onTap: (index) => _selectTab(index),
                splashFactory: NoSplash.splashFactory,
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                isScrollable: true,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  for (var tab in tabs)
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: _selectedIndex == tabs.indexOf(tab)
                              ? Colors.black
                              : null,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          tab,
                        ),
                      ),
                    )
                ])),
        body: TabBarView(
          children: [
            for (var tab in tabs)
              tab == "All"
                  ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: db.length,
                      itemBuilder: (context, index) => ActivityTileWidget(
                        username: db[index]["username"] as String,
                        activiteText: db[index]["activiteText"] as String,
                        activities: db[index]["activities"] as String,
                      ),
                    )
                  : Center(
                      child: Text(tab),
                    ),
          ],
        ),
      ),
    );
  }
}
