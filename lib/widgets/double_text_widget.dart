import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleRowText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleRowText(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: Styles.headLineStyle2,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              smallText,
              style: Styles.headLineStyle3.copyWith(
                color: Styles.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
