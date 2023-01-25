// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/utils/hotel_list.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/tabs_widget.dart';
import 'package:booktickets/widgets/text_column_widget.dart';
import 'package:booktickets/widgets/ticker_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
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
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(
                AppLayout.getHeight(
                  20,
                ),
              ),
              const AppTabsText(
                firstTab: 'Upcoming',
                secondTab: 'Previoua',
              ),
              Gap(
                AppLayout.getHeight(
                  20,
                ),
              ),
              TicketView(
                isColor: true,
                ticket: ticketList[0],
              ),

              // next

              const SizedBox(
                height: 1,
              ),

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(
                    16,
                  ),
                  vertical: AppLayout.getHeight(
                    20,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Styles.whiteColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          textOne: 'Flutter DB',
                          textTwo: 'Passengers',
                        ),
                        TextColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          textOne: '5221 364874',
                          textTwo: 'passport',
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(
                        15,
                      ),
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 16,
                      isColor: false,
                    ),
                    Gap(
                      AppLayout.getHeight(
                        15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          textOne: '0055 333 47711',
                          textTwo: 'Number of E-ticket',
                        ),
                        TextColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          textOne: 'GGDRSES',
                          textTwo: 'Booking code',
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(
                        15,
                      ),
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 16,
                      isColor: false,
                    ),
                    Gap(
                      AppLayout.getHeight(
                        15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2342',
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const TextColumnLayout(
                          textOne: '\$243.99',
                          textTwo: 'Price',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(
                        40,
                      ),
                    ),
                    /* 
                    BAR CODE
                    */
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(
                          15,
                        ),
                      ),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/jaysalasi',
                        width: double.infinity,
                        height: 70,
                        drawText: false,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(
                AppLayout.getHeight(
                  30,
                ),
              ),
              TicketView(
                ticket: ticketList[0],
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(
              19,
            ),
            top: AppLayout.getHeight(
              300,
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(
              19,
            ),
            top: AppLayout.getHeight(
              300,
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
