import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelCards extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCards({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      margin: const EdgeInsets.only(
        top: 10,
        right: 15,
      ),
      decoration: BoxDecoration(
          color: Styles.blueColor,
          borderRadius: BorderRadius.circular(
            20,
          ),
          boxShadow: [
            BoxShadow(
              color: Styles.whiteColor,
              blurRadius: 12,
              spreadRadius: 5,
            ),
          ]),
      width: size.width * 0.6,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              color: Styles.primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/${hotel['image']}',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(
            10,
          ),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle4.copyWith(
              color: Styles.whiteColor,
            ),
          ),
          const Gap(
            30,
          ),
          Text(
            // ignore: prefer_interpolation_to_compose_strings
            "\$" + hotel['price'].toString() + " / night",
            style: Styles.headLineStyle3.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
