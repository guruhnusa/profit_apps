import 'package:flutter/material.dart';

import 'package:profit/core/assets/assets.gen.dart';
import 'package:profit/core/extensions/build_context_ext.dart';
import 'package:profit/presentation/authentication/pages/login_page.dart';
import 'package:profit/presentation/onboarding/models/onboarding_model.dart';
import 'package:profit/presentation/onboarding/widgets/onboarding_content.dart';
import '../widgets/onboarding_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();
  int currentPage = 0;

  final onboardingContent = [
    OnboardingModel(
      image: Assets.images.onboarding.onboarding1.path,
      title: "Welcome to profit plus",
      description:
          "Find new ways to grow your business with the help of the latest technology.",
    ),
    OnboardingModel(
      image: Assets.images.onboarding.onboarding2.path,
      title: "Optimization with Machine Learning",
      description:
          "Improve operational efficiency and gain deep insights through leading technology.",
    ),
    OnboardingModel(
      image: Assets.images.onboarding.onboarding3.path,
      title: "Increase Efficiency, Achieve Optimal Results",
      description:
          "Increase productivity easily, so you can focus on maximizing business growth.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          OnboardingContent(
              pageController: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              content: onboardingContent),
          OnboardingBottom(
            onboardingContent: onboardingContent,
            currentPage: currentPage,
            skip: () {
              context.pushReplacement(const LoginPage());
            },
            next: () {
              if (currentPage == onboardingContent.length - 1) {
                context.pushReplacement(const LoginPage());
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
