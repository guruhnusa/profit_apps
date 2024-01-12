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
                Icon(
                  iconPath,
                  size: 25,
                  color: AppColors.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  iconLabel,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF49454F).withOpacity(0.3),
                  ),
                ),
              ],
            ),
    );
  }
}
