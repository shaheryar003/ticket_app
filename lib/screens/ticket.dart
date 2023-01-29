import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_app/screens/animated_button.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_Info_list.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:booking_app/widgets/columnText.dart';
import 'package:booking_app/widgets/dottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return Scaffold(
        backgroundColor: styles.backgroundColor,
        body: Stack(children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: appLayout.getHeight(20),
                horizontal: appLayout.getWidth(20)),
            children: [
              Gap(appLayout.getHeight(40)),
              Text(
                "Tickets",
                style: styles.headlineStyle1.copyWith(fontSize: 35),
              ),
              const animatedBtn(
                  firstText: "Incoming",
                  firstIcon: Icons.airplane_ticket_outlined,
                  secondText: "  OutGoing",
                  secondIcon: Icons.airplane_ticket_sharp),
              Gap(appLayout.getHeight(15)),
              Container(
                padding: EdgeInsets.only(left: appLayout.getHeight(15)),
                child: ticketView(
                  ticket: ticketList[0],
                  iscolor: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: appLayout.getHeight(15)),
                  child: Column(
                    children: [
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 1,
                        child: const dottedLine(
                          iscolor: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            columnText(
                              UpperText: 'Flutter DB',
                              LowerText: "Passenger",
                              alignment: CrossAxisAlignment.start,
                            ),
                            columnText(
                              UpperText: '5221 476566',
                              LowerText: "Passport",
                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        ),
                      ),
                      Gap(appLayout.getHeight(15)),
                      SizedBox(
                        height: 1,
                        child: dottedLine(
                          iscolor: true,
                        ),
                      ),
                      Gap(appLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          columnText(
                            UpperText: '0055 444 77147',
                            LowerText: "Number of E Ticket",
                            alignment: CrossAxisAlignment.start,
                          ),

                          columnText(
                            UpperText: 'B2SG28',
                            LowerText: "Booking Code",
                            alignment: CrossAxisAlignment.end,
                          ),
                          // columnText(UpperText: ticket['date'], LowerText: "Date", alignment: CrossAxisAlignment.start,)
                        ],
                      ),
                      Gap(appLayout.getHeight(15)),
                      SizedBox(
                        height: 1,
                        child: dottedLine(
                          iscolor: true,
                        ),
                      ),
                      Gap(appLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 7755",
                                    style: styles.headlineStyle3
                                        .copyWith(color: Colors.black),
                                  )
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Payment Method",
                                style: styles.headlineStyle4,
                              )
                            ],
                          ),
                          columnText(
                            UpperText: '\$750',
                            LowerText: "Price",
                            alignment: CrossAxisAlignment.end,
                          ),

                          // columnText(UpperText: ticket['date'], LowerText: "Date", alignment: CrossAxisAlignment.start,)
                        ],
                      ),
                      Gap(20),
                      SizedBox(
                        height: 1,
                        child: dottedLine(
                          iscolor: true,
                        ),
                      ),
                      Gap(10),
                      BarcodeWidget(
                        data: 'https://github.com/martinovovo',
                        barcode: Barcode.code128(),
                        drawText: false,
                        height: 50,
                      ),
                      Gap(20),
                      SizedBox(
                        height: 1,
                        child: dottedLine(
                          iscolor: true,
                        ),
                      ),
                      Gap(15)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: ticketView(ticket: ticketList[0]),
              )
            ],
          ),
        ]));
  }
}
