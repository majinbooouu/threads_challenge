import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class SearchTileWidget extends StatefulWidget {
  final String username, handle;
  final int followers;

  const SearchTileWidget({
    super.key,
    required this.username,
    required this.handle,
    required this.followers,
  });

  @override
  State<SearchTileWidget> createState() => _SearchTileWidgetState();
}

class _SearchTileWidgetState extends State<SearchTileWidget> {
  late final Faker _faker;
  late final NetworkImage _networkImage = NetworkImage(
    _faker.image.image(
      keywords: ['man'],
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
            leading: CircleAvatar(backgroundImage: _networkImage),
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
            subtitle: Text(widget.handle),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.black,
                backgroundColor: const Color(0xfffafafa),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Colors.grey),
                ),
              ),
              child: const Text("Follow"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 78,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${NumberFormat.compact(locale: "en_US").format(widget.followers)} followers",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
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
