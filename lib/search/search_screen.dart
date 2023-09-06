import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threads_challenge/activity/widgets/widgets/search_tile_widget.dart';

var db = [
  {
    "username": "henrry",
    "handle": "hehehe123;",
    "followers": 6000,
  },
  {
    "username": "미우미우",
    "handle": "miumiu;",
    "followers": 300,
  },
  {
    "username": "문푸우",
    "handle": "moon123;",
    "followers": 1400,
  },
  {
    "username": "Jun",
    "handle": "junjun312;",
    "followers": 68970,
  },
  {
    "username": "nico",
    "handle": "nicoboco;",
    "followers": 75981,
  },
  {
    "username": "Lynn",
    "handle": "lynnnnnn;",
    "followers": 31,
  },
  {
    "username": "잌하이",
    "handle": "ikkkkk;",
    "followers": 45987,
  },
  {
    "username": "욱킹",
    "handle": "wookwook;",
    "followers": 45612,
  },
  {
    "username": "토치",
    "handle": "torch;",
    "followers": 412,
  },
  {
    "username": "주스",
    "handle": "juice;",
    "followers": 9876,
  },
];

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        elevation: 0,
        backgroundColor: const Color(0xfffafafa),
        leadingWidth: 200,
        leading: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Text(
            "Search",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Padding(
            padding: EdgeInsets.only(
              top: 0,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            child: SizedBox(
              height: 40,
              child: CupertinoSearchTextField(
                placeholder: 'Search',
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: db.length,
        itemBuilder: (context, index) => SearchTileWidget(
          username: db[index]["username"] as String,
          handle: db[index]["handle"] as String,
          followers: db[index]["followers"] as int,
        ),
      ),
    );
  }
}
