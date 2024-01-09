import 'package:flutter/material.dart';
import 'package:profit/core/constant/colors.dart';
import 'package:profit/core/extensions/build_context_ext.dart';

import '../models/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  final PageController pageController;
  final void Function(int) onPageChanged;
  final List<OnboardingModel> content;
  const OnboardingContent({
    Key? key,
    required this.pageController,
    required this.onPageChanged,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPageChanged,
        itemCount: content.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 77,
              ),
              SizedBox(
                height: context.deviceWidth * 0.75,
                child: Image.asset(
                  content[index].image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  content[index].title,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  content[index].description,
                  style: const TextStyle(
                    color: Color(0xFF1D2939),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
