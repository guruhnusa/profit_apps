import 'package:flutter/material.dart';

import 'package:profit/core/assets/assets.gen.dart';

import '../widgets/banner_help.dart';
import '../widgets/banner_idea_plan.dart';
import '../widgets/button_feature.dart';
import '../widgets/header_home.dart';
import '../widgets/mentor_category.dart';
import '../widgets/see_all_button.dart';
import '../widgets/video_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            const SizedBox(
              height: 20,
            ),
            const HeaderHome(),
            const SizedBox(
              height: 20,
            ),
            const BannerIdeaPlan(),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonFeature(
                  title: "Idea Plan",
                  image: Assets.images.icon.lamp.path,
                  color: const Color(0xFF0E64E6),
                  onTap: () {},
                ),
                ButtonFeature(
                  title: "Funding",
                  image: Assets.images.icon.money.path,
                  color: const Color(0xFF3CCB7F),
                  onTap: () {},
                ),
                ButtonFeature(
                  title: "Halal Guide Center",
                  image: Assets.images.icon.task.path,
                  color: const Color(0xFFF04438),
                  onTap: () {},
                ),
                ButtonFeature(
                  title: "Infaq",
                  image: Assets.images.icon.hand.path,
                  color: const Color(0xFFFDB022),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SeeAllButton(title: "Mentor With The Best Rating"),
            const SizedBox(
              height: 20,
            ),
            const MentorCategory(),
            const SizedBox(
              height: 20,
            ),
            const SeeAllButton(
              title: "Recommendation Video for You",
            ),
            const SizedBox(
              height: 20,
            ),
            const VideoCategory(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Maybe You Need Our Help",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BannerHelp(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
