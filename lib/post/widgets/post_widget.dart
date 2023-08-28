import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(),
            SizedBox(
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
                        "pubity",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "2m",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          FaIcon(
                            FontAwesomeIcons.ellipsis,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Vine after seeing the Threads logo unveiled. Vine after seeing the Threads logo unveiled. Vine after seeing the Threads logo unveiled.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    // 이미지 listView.seperated로 이미지 넣을 위치?
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
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
                  SizedBox(
                    height: 5,
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
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 12,
                  ),
                ),
                Positioned(
                  top: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 8,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 5,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "36 replies . 391 likes",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
