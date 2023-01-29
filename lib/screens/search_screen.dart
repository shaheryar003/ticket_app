import 'package:booking_app/screens/animated_button.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:booking_app/widgets/iconText.dart';
import 'package:booking_app/widgets/viewall.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: appLayout.getWidth(20),
            vertical: appLayout.getHeight(20)),
        children: [
          Gap(appLayout.getHeight(16)),
          Text(
            "What are\nyou looking for?",
            style: styles.headlineStyle1
                .copyWith(fontSize: appLayout.getWidth(35)),
          ),
          Gap(appLayout.getHeight(15)),
          animatedBtn(
            firstText: "Tickets",
            firstIcon: Icons.airplane_ticket_outlined,
            secondText: "  Hotels ",
            secondIcon: Icons.hotel,
          ),
          Gap(appLayout.getHeight(25)),
          appIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(appLayout.getHeight(15)),
          appIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(appLayout.getHeight(20)),
          Container(
            child: Center(
              child: Text(
                "Find Tickets",
                style: styles.headlineStyle2.copyWith(color: Colors.black),
              ),
            ),
            padding: EdgeInsets.symmetric(
                vertical: appLayout.getHeight(15),
                horizontal: appLayout.getWidth(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(appLayout.getWidth(10)),
              color: Color.fromARGB(255, 0, 105, 191),
            ),
          ),
          Gap(appLayout.getHeight(40)),
          viewAll(text: "Upcoming Flights"),
          Gap(appLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: appLayout.getHeight(400),
                width: appLayout.getWidth(400) * 0.45,
                padding: EdgeInsets.symmetric(
                    vertical: appLayout.getHeight(15),
                    horizontal: appLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent.shade200,
                          spreadRadius: 1,
                          blurRadius: 7)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: appLayout.getHeight(190),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Gap(appLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight, Dont miss.",
                      style:
                          styles.headlineStyle2.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: appLayout.getHeight(215),
                        width: appLayout.getWidth(154),
                        decoration: BoxDecoration(
                            color: Color(0xff3abbbb),
                            borderRadius:
                                BorderRadius.circular(appLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            horizontal: appLayout.getHeight(15),
                            vertical: appLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount \nfor Servey",
                              style: styles.headlineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(appLayout.getHeight(18)),
                            Text(
                              "Take the Servey about our services and get Discount Now",
                              style: styles.headlineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(appLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 18, color: Color(0xff189999))),
                        ),
                      )
                    ],
                  ),
                  Gap(appLayout.getHeight(15)),
                  Container(
                    height: appLayout.getHeight(170),
                    width: appLayout.getWidth(154),
                    decoration: BoxDecoration(
                        color: Color(0xffec6545),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                        borderRadius:
                            BorderRadius.circular(appLayout.getHeight(18))),
                    padding: EdgeInsets.symmetric(
                        horizontal: appLayout.getHeight(15),
                        vertical: appLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Take Love",
                          style: styles.headlineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(appLayout.getHeight(10)),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 22)),
                              TextSpan(
                                  text: '❤', style: TextStyle(fontSize: 38)),
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 22))
                            ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
