import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid ? 164 : 166),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(isColor == null ? 16 : 0),
        ),
        child: Column(
          children: [
            //

            // TOP BLUE PART

            //

            Container(
              decoration: BoxDecoration(
                color: isColor == null
                    ? const Color(0xff526799)
                    : Styles.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppLayout.getHeight(21),
                  ),
                  topRight: Radius.circular(
                    AppLayout.getHeight(21),
                  ),
                ),
              ),
              padding: EdgeInsets.all(
                AppLayout.getHeight(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3.copyWith(
                                color: Styles.blueColor,
                              ),
                      ),
                      const Spacer(),
                      isColor == null
                          ? const ThickContainer()
                          : const ThickContainer(
                              isColor: true,
                            ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child:
                                    const AppLayoutBuilderWidget(sections: 6)),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Styles.blueColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      isColor == null
                          ? const ThickContainer()
                          : const ThickContainer(
                              isColor: true,
                            ),
                      const Spacer(),
                      Text(
                        ticket['from']['code'],
                        style: Styles.headLineStyle3.copyWith(
                          color:
                              isColor == null ? Colors.white : Styles.blueColor,
                        ),
                      ),
                    ],
                  ),
                  const Gap(
                    2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4.copyWith(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade500,
                          ),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle4.copyWith(
                          color: isColor == null
                              ? Colors.white
                              : Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            /*

            MIDDLE ORANGE PART

            */

            Container(
              color: isColor == null ? Styles.orangeColor : Styles.whiteColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.whiteColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(
                            10,
                          ),
                          bottomRight: Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                        builder: (context, BoxConstraints constraints) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        direction: Axis.horizontal,
                        children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.blueColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.whiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            10,
                          ),
                          bottomLeft: Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*

          down orange 

          */

            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Styles.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    isColor == null ? 21 : 0,
                  ),
                  bottomRight: Radius.circular(
                    isColor == null ? 21 : 0,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(
                15,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Styles.blueColor,
                            ),
                          ),
                          Text(
                            'date',
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            ticket['departure_time'].toString(),
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Styles.blueColor,
                            ),
                          ),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Styles.blueColor,
                            ),
                          ),
                          Text(
                            'number',
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      // const Spacer(),
                    ],
                  ),
                  const Gap(
                    2,
                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     SizedBox(
                  //       width: 100,
                  //       child: Text(
                  //         'Number',
                  //         style: Styles.headLineStyle4.copyWith(
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //     Text(
                  //       '8H 30M',
                  //       style: Styles.headLineStyle4.copyWith(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 100,
                  //       child: Text(
                  //         'London',
                  //         textAlign: TextAlign.end,
                  //         style: Styles.headLineStyle4.copyWith(
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
