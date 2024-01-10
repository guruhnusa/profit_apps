import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class NavbarMenu extends StatelessWidget {
  final int selectedIndex;
  final IconData iconPath;
  final String iconLabel;
  final VoidCallback onTap;
  final bool isActive;
  const NavbarMenu({
    Key? key,
    required this.selectedIndex,
    required this.iconPath,
    required this.iconLabel,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isActive
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 32,
                  width: 64,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    iconPath,
                    size: 25,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  iconLabel,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Icon(
                  iconPath,
                  size: 25,
                  color: const Color(0xFF49454F).withOpacity(0.3),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  iconLabel,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF49454F).withOpacity(0.3),
                  ),
                ),
              ],
            ),
    );
  }
}
