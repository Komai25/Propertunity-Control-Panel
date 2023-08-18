import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  String title;
  String description;

  Section({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Outfit',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Text(
          description,
          // overflow: TextOverflow.clip,
          softWrap: true,
          maxLines: 10,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w100,
            fontFamily: 'Outfit',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
      ],
    );
  }
}
