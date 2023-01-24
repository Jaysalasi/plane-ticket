import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTabsText extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTabsText({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(
            20,
          ),
        ),
        color: Styles.slightWhiteColor,
      ),
      child: FittedBox(
        child: Row(
          children: [
            /* 
                  air line tickets
                  */

            Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(
                  5,
                ),
                horizontal: AppLayout.getWidth(
                  10,
                ),
              ),
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: Styles.whiteColor,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(
                      20,
                    ),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  firstTab,
                ),
              ),
            ),

            /* 
                  air hotels
                  */

            Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(
                  5,
                ),
                horizontal: AppLayout.getWidth(
                  10,
                ),
              ),
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: Styles.slightWhiteColor,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(
                      20,
                    ),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  secondTab,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
