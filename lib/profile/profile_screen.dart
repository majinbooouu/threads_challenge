import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:threads_challenge/post/post_timeline_screen.dart';
import 'package:threads_challenge/post/widgets/post_widget.dart';
import 'package:threads_challenge/profile/setting_screen.dart';
import 'package:threads_challenge/profile/widgets/persistent_tab_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeURL = "/profile";
  static const routeName = "profile";
  const ProfileScreen({super.key});

  void _onSettingTap(BuildContext context) {
    context.push(SettingScreen.routeURL);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              // backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              elevation: 0,
              automaticallyImplyLeading: false,
              leading: const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                ),
                child: FaIcon(
                  FontAwesomeIcons.earthAmericas,
                  size: 30,
                ),
              ),
              actions: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 15,
                    left: 15,
                  ),
                  child: GestureDetector(
                    onTap: () => _onSettingTap(context),
                    child: const FaIcon(
                      FontAwesomeIcons.gear,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Jane",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "jane_mobbin",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 100,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant,
                                  ),
                                  child: const Text(
                                    "threads.net",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            faker.image.image(
                              keywords: ['plant'],
                              random: true,
                              width: 1280,
                              height: 960,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Plant enthusiast!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.background,
                              radius: 20,
                            ),
                            Positioned(
                              top: 10,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  faker.image.image(
                                    keywords: ['people'],
                                    random: true,
                                    width: 1280,
                                    height: 960,
                                  ),
                                ),
                                radius: 10,
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    width: 2.0,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    faker.image.image(
                                      keywords: ['people'],
                                      random: true,
                                      width: 1280,
                                      height: 960,
                                    ),
                                  ),
                                  radius: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "2 followers",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 9,
                          child: Center(
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Edit profile',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inverseSurface,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          child: SizedBox(
                            width: 20,
                          ),
                        ),
                        Flexible(
                          flex: 9,
                          child: Center(
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Share profile',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inverseSurface,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: PersistentTabBar(),
              pinned: true,
            ),
          ],
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
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
              ),
              const Center(
                child: Text('Page two'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
