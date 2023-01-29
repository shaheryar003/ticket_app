import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class hotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const hotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("hotel price ${hotel['price']}");
    final size = appLayout.getSize(context);
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: appLayout.getWidth(20),
          vertical: appLayout.getHeight(20)),
      padding: EdgeInsets.symmetric(
          vertical: appLayout.getHeight(17),
          horizontal: appLayout.getHeight(15)),
      decoration: BoxDecoration(
          color: styles.primaryColor,
          borderRadius: BorderRadius.circular(appLayout.getHeight(20)),
          boxShadow: [
            BoxShadow(color: Colors.red, blurRadius: 6, spreadRadius: 1)
          ]),
      width: size.width * 0.65,
      height: appLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: appLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(appLayout.getHeight(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          Gap(appLayout.getHeight(10)),
          Text(
            "${hotel['place']}",
            style: styles.headlineStyle2.copyWith(color: styles.hotelfont),
          ),
          Text(
            "${hotel['destination']}",
            style: styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          Gap(appLayout.getHeight(8)),
          Text(
            "\$${hotel['price']} Per Night",
            style: styles.headlineStyle1.copyWith(color: styles.hotelfont),
          ),
        ],
      ),
    );
  }
}
