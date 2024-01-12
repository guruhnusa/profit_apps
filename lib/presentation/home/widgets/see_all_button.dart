import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  final String title;
  const SeeAllButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Text(
          "See All",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF545454),
          ),
        ),
      ],
    );
  }
}
