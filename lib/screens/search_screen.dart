import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(
            20,
          ),
          vertical: AppLayout.getHeight(
            30,
          ),
        ),
        children: [
          Gap(
            AppLayout.getHeight(50),
          ),
          Text(
            'What are \nyou looking for?',
            style: Styles.headLineStyle1,
          ),
          Gap(
            AppLayout.getHeight(30),
          ),
          const AppTabsText(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          Gap(
            AppLayout.getHeight(
              20,
            ),
          ),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(
            AppLayout.getHeight(
              15,
            ),
          ),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(
            AppLayout.getHeight(
              20,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(
                15,
              ),
              horizontal: AppLayout.getWidth(
                10,
              ),
            ),
            decoration: BoxDecoration(
              color: Styles.sharpblueColor,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Center(
              child: Text(
                'find tickets',
                style: Styles.textStyle.copyWith(
                  color: Styles.whiteColor,
                ),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(
              20,
            ),
          ),
          const AppDoubleRowText(
            bigText: 'Upcoming Flights',
            smallText: 'view all',
          ),
          Gap(
            AppLayout.getHeight(
              20,
            ),
          ),

          /*
          DOWN SIDE 
          */

          Row(
            children: [
              /*
              part one left
              */
              Container(
                height: AppLayout.getHeight(
                  420,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(
                    15,
                  ),
                  vertical: AppLayout.getHeight(
                    15,
                  ),
                ),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Styles.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(
                      12,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(
                        190,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(
                            12,
                          ),
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/sit.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(
                        25,
                      ),
                    ),
                    Text(
                      '20% discount on the early booking of this flight, don\'t miss this chance.',
                      style: Styles.headLineStyle3,
                    ),
                  ],
                ),
              ),
              /* 
              second
              */
              Gap(
                AppLayout.getHeight(
                  10,
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(
                          200,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(
                            0xff3ab8b8,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(
                              18,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(
                              14,
                            ),
                            horizontal: AppLayout.getWidth(
                              20,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                  color: Styles.whiteColor,
                                ),
                              ),
                              Gap(
                                AppLayout.getHeight(
                                  20,
                                ),
                              ),
                              Text(
                                'Takke the survey about our services and get discount',
                                style: Styles.headLineStyle3.copyWith(
                                  color: Styles.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -25,
                        child: Container(
                          padding: const EdgeInsets.all(
                            25,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Styles.blueColor.withOpacity(0.5),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(
                      15,
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(
                      200,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(
                        15,
                      ),
                      horizontal: AppLayout.getWidth(
                        20,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(
                          14,
                        ),
                      ),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyle2.copyWith(
                            color: Styles.whiteColor,
                          ),
                        ),
                        Gap(
                          AppLayout.getHeight(
                            10,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😘',
                                  style: TextStyle(
                                    fontSize: 25,
                                  )),
                              TextSpan(
                                  text: '🥰',
                                  style: TextStyle(
                                    fontSize: 40,
                                  )),
                              TextSpan(
                                  text: '😍',
                                  style: TextStyle(
                                    fontSize: 25,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
