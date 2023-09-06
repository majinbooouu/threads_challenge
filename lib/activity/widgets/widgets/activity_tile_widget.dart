import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityTileWidget extends StatefulWidget {
  final String username, activiteText;
  final String activities;

  const ActivityTileWidget({
    super.key,
    required this.username,
    required this.activiteText,
    required this.activities,
  });

  @override
  State<ActivityTileWidget> createState() => _SearchTileWidgetState();
}

class _SearchTileWidgetState extends State<ActivityTileWidget> {
  late final Faker _faker;
  late final NetworkImage _networkImage = NetworkImage(
    _faker.image.image(
      keywords: ['man'],
      random: true,
      width: 1280,
      height: 960,
    ),
  );
  late final NetworkImage _tooltipImage = NetworkImage(
    _faker.image.image(
      keywords: ['girl'],
      random: true,
      width: 1280,
      height: 960,
    ),
  );

  @override
  void initState() {
    super.initState();
    _faker = Faker();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: ListTile(
            leading: Stack(children: [
              CircleAvatar(backgroundImage: _networkImage),
              Positioned(
                top: 16,
                right: -2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: _tooltipImage,
                    radius: 10,
                  ),
                ),
              ),
            ]),
            title: Row(
              children: [
                Text(
                  widget.username,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const FaIcon(
                  FontAwesomeIcons.solidCircleCheck,
                  color: Colors.blue,
                  size: 15,
                ),
              ],
            ),
            subtitle: Text(widget.activiteText),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 78,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.activities.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(
                    right: 60,
                  ),
                  child: Text(
                    widget.activities,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              const Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
