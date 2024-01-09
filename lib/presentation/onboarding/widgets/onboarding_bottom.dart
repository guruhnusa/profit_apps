import 'package:flutter/material.dart';
import 'package:profit/presentation/onboarding/widgets/onboarding_indicator.dart';

import '../models/onboarding_model.dart';

class OnboardingBottom extends StatelessWidget {
  const OnboardingBottom({
    Key? key,
    required this.onboardingContent,
    required this.currentPage,
    required this.skip,
    required this.next,
  }) : super(key: key);

  final List<OnboardingModel> onboardingContent;
  final int currentPage;
  final VoidCallback skip;
  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: skip,
          child: const Text(
            "Skip",
            style: TextStyle(
              color: Color(0xFFF47100),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        OnboardingIndicator(
          length: onboardingContent.length,
          currentIndex: currentPage,
        ),
        TextButton(
          onPressed: next,
          child: Text(
            currentPage == 2 ? "Start" : "Next",
            style: const TextStyle(
              color: Color(0xFFF47100),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
