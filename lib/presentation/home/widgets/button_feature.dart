import 'package:flutter/material.dart';

class ButtonFeature extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String image;
  final Color color;

  const ButtonFeature({
    Key? key,
    required this.onTap,
    required this.title,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  color: Color(0xFFD1E9FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 70,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF344054),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
