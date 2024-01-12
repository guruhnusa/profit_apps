import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constant/colors.dart';

class BannerIdeaPlan extends StatelessWidget {
  const BannerIdeaPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: AppColors.tertiary,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          SizedBox(
            width: 50,
            height: 50,
            child: Image(
              image: AssetImage(Assets.images.idea.path),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Yuk, Mulai Buat Idea Plan!",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1D2939),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Dapatkan skor Bisnis Anda sesuai dengan BMC",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF1D2939),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
