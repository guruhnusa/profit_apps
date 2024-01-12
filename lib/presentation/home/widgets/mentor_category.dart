import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class MentorCategory extends StatelessWidget {
  const MentorCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
              width: 105,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFEAECF0),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    child: Image.network(
                      'https://i.pravatar.cc/${index + 201}',
                      width: 40.0,
                      height: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_circle_outlined,
                        color: Color(0xFFEC6E00),
                        size: 14,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Business Coach",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF98A2B3),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 80,
                    height: 24,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          width: 1,
                          color: Color(0xFFEC6E00),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFEC6E00),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
