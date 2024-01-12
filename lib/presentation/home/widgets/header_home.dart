import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Hi, John Doe !",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(width: 5),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          child: Image.network(
            'https://i.pravatar.cc/200',
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}