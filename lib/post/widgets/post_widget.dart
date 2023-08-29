import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatelessWidget {
  final String userName, description, time;
  final int replies, likes;
  final int photos;

  const PostWidget(
      {super.key,
      required this.userName,
      required this.description,
      required this.time,
      required this.replies,
      required this.likes,
      required this.photos});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                faker.image.image(
                  keywords: ['man'],
                  random: true,
                  width: 1280,
                  height: 960,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            time,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.ellipsis,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (photos != 0)
                    SizedBox(
                      height: 250,
                      child: ListView.separated(
                        itemCount: photos,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          width: 350,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                            faker.image.image(
                              keywords: ['puppy'],
                              random: true,
                              width: 1280,
                              height: 960,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.heart,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.comment,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.retweet,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.paperPlane,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            if (replies > 2)
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        faker.image.image(
                          keywords: ['people'],
                          random: true,
                          width: 1280,
                          height: 960,
                        ),
                      ),
                      radius: 12,
                    ),
                  ),
                  Positioned(
                    top: 13,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        faker.image.image(
                          keywords: ['people'],
                          random: true,
                          width: 1280,
                          height: 960,
                        ),
                      ),
                      radius: 8,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 15,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        faker.image.image(
                          keywords: ['people'],
                          random: true,
                          width: 1280,
                          height: 960,
                        ),
                      ),
                      radius: 5,
                    ),
                  ),
                ],
              ),
            if (replies <= 2)
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
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
                    top: 6,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 5.0,
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
              width: 15,
            ),
            Text(
              "$replies replies . $likes likes",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
