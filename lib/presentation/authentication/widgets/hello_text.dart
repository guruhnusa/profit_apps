import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constant/colors.dart';

class HelloText extends StatelessWidget {
  const HelloText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hello, Welcome ",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.primary),
        ),
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset(
            Assets.images.hand.path,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}