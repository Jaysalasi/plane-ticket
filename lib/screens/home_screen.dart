import 'package:booktickets/screens/hotel_cards.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/hotel_list.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
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
                          'User Prime',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
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
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(10),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
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
                const AppDoubleRowText(
                  bigText: 'Upcoming Flights',
                  smallText: 'view all',
                ),
              ],
            ),
          ),
          const Gap(
            20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(ticket: singleTicket))
                    .toList(),
              ),
            ),
          ),
          const Gap(
            20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: AppDoubleRowText(
              bigText: 'Hotels',
              smallText: 'view all',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                // children: const [
                //   HotelCards(),
                //   HotelCards(),
                // ],
                children: hotelList
                    .map((singleHotel) => HotelCards(hotel: singleHotel))
                    .toList(),
              ),
            ),
          ),
          const Gap(
            20,
          ),
        ],
      ),
    );
  }
}
