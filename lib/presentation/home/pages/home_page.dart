import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: const [
            SizedBox(
              height: 20,
            ),
            HeaderHome()
          ],
        ),
      ),
    );
  }
}

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
          "Hi, John Doe",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 5),
        //Circular image
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          child: Image.network(
            'https://i.pravatar.cc/200',
            width: 36.0,
            height: 36.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
