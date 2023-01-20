import 'package:booktickets/widgets/ticker_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(
                  30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(
                          5,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/img_1.png",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(
                  25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text(
                        'search',
                        // style: Styles.headLineStyle3,
                      ),
                    ],
                  ),
                ),
                const Gap(
                  30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'view all',
                        style: Styles.headLineStyle3.copyWith(
                          color: Styles.primaryColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Gap(
            20,
          ),
          TicketView()
        ],
      ),
    );
  }
}
