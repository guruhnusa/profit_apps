import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int length;
  const OnboardingIndicator({
    Key? key,
    required this.currentIndex,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 12,
          width: currentIndex == index ? 30 : 12,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color(0xFFF47100)
                : const Color(0xFFCBD5E1),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}
