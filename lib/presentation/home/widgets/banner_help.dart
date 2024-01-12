import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';

class BannerHelp extends StatelessWidget {
  const BannerHelp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFD9EEFF),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/banner.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 210,
                  height: 40,
                  child: Text(
                    "Make sure all your businesses are halal certified!",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF2A8500),
                      fontWeight: FontWeight.w900,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Text(
                  "No need to be confused, click here to see the guide",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF2A8500),
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage(Assets.images.banner.banner1.path),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
