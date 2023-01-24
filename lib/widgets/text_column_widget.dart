import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TextColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String textOne;
  final String textTwo;
  const TextColumnLayout(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          textOne,
          style: Styles.headLineStyle3,
        ),
        Gap(
          AppLayout.getHeight(
            5,
          ),
        ),
        Text(
          textTwo,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
