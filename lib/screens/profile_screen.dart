import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/text_column_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(
            20,
          ),
          vertical: AppLayout.getHeight(
            20,
          ),
        ),
        children: [
          Gap(
            AppLayout.getHeight(
              40,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(
                  70,
                ),
                width: AppLayout.getWidth(
                  70,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(
                      15,
                    ),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/img_1.png',
                    ),
                  ),
                ),
              ),
              Gap(
                AppLayout.getHeight(
                  20,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Prime',
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    'New-York',
                    style: Styles.headLineStyle4,
                  ),
                  Gap(
                    AppLayout.getHeight(
                      9,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(
                        4,
                      ),
                      vertical: AppLayout.getHeight(
                        4,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(
                          100,
                        ),
                      ),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(
                            3,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: AppLayout.getHeight(
                              15,
                            ),
                          ),
                        ),
                        const Gap(
                          5,
                        ),
                        Text(
                          'Premium status',
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: Styles.headLineStyle4,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade300,
          ),

          //
          // STACK
          //

          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(
                  90,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(
                      18,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -45,
                right: -40,
                child: Container(
                  padding: EdgeInsets.all(
                    AppLayout.getHeight(
                      30,
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Styles.sharpblueColor,
                      width: 18,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(
                    20,
                  ),
                  vertical: AppLayout.getHeight(
                    15,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(
                        12,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new record',
                          style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'You have 95 flights this year',
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          //
          Gap(
            AppLayout.getHeight(
              25,
            ),
          ),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(
            AppLayout.getHeight(
              20,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  '1992322',
                  style: Styles.headLineStyle1.copyWith(
                    fontSize: 35,
                  ),
                ),
                Gap(
                  AppLayout.getHeight(
                    20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '11 May 2022',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(
                    25,
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextColumnLayout(
                      textOne: '23 032',
                      textTwo: 'Miles',
                      alignment: CrossAxisAlignment.start,
                    ),
                    TextColumnLayout(
                      textOne: 'Airline CO',
                      textTwo: 'Received from',
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(
                    20,
                  ),
                ),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(
                  AppLayout.getHeight(
                    20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextColumnLayout(
                      textOne: '24',
                      textTwo: 'Miles',
                      alignment: CrossAxisAlignment.start,
                    ),
                    TextColumnLayout(
                      textOne: 'Mc Donald\'s',
                      textTwo: 'Received from',
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(
                    20,
                  ),
                ),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(
                  AppLayout.getHeight(
                    20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextColumnLayout(
                      textOne: '522 234',
                      textTwo: 'Miles',
                      alignment: CrossAxisAlignment.start,
                    ),
                    TextColumnLayout(
                      textOne: 'Exuma',
                      textTwo: 'Received from',
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(
                    30,
                  ),
                ),
                Text(
                  'How to get more miles',
                  style: Styles.headLineStyle4.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
