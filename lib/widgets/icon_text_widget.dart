import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppIconText({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(
          12,
        ),
        horizontal: AppLayout.getWidth(
          10,
        ),
      ),
      decoration: BoxDecoration(
        color: Styles.whiteColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Styles.iconColor,
          ),
          Gap(
            AppLayout.getWidth(
              10,
            ),
          ),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
