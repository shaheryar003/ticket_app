import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:booking_app/widgets/thickcontainer.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ticketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const ticketView({super.key, required this.ticket, this.iscolor});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: appLayout.getHeight(GetPlatform.isAndroid == true ? 171 : 182),
      child: Container(
        margin: EdgeInsets.only(
          right: appLayout.getHeight(16),
        ),
        child: Column(
          children: [
            /*Showing blue part of card */
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(appLayout.getHeight(21)),
                  topRight: Radius.circular(appLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(appLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      thickContainer(
                        iscolor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: appLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              width: appLayout.getWidth(3),
                                              height: appLayout.getHeight(1),
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: iscolor == null
                                                          ? Colors.white
                                                          : Colors
                                                              .green.shade300)),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: iscolor == null
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      thickContainer(
                        iscolor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Gap(appLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: iscolor == null
                              ? styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: iscolor == null
                            ? styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3
                                .copyWith(color: Colors.black),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          style: iscolor == null
                              ? styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : styles.headlineStyle4,
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            /*Showing orange part of card */
            ,
            Container(
              color: iscolor == null ? styles.orangeColor : Colors.white,
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: appLayout.getHeight(20),
                    width: appLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(appLayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(appLayout.getHeight(10))),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(appLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: appLayout.getWidth(5),
                                    height: appLayout.getHeight(1),
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: iscolor == null
                                                ? Colors.white
                                                : Colors.grey.shade300)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: appLayout.getHeight(20),
                    width: appLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(appLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(appLayout.getHeight(10))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: iscolor == null
                      ? Radius.circular(appLayout.getHeight(21))
                      : Radius.circular(appLayout.getHeight(0)),
                  bottomRight: iscolor == null
                      ? Radius.circular(appLayout.getHeight(21))
                      : Radius.circular(appLayout.getHeight(0)),
                ),
              ),
              padding: EdgeInsets.only(
                  top: appLayout.getHeight(10),
                  left: appLayout.getHeight(16),
                  right: appLayout.getHeight(16),
                  bottom: appLayout.getHeight(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        ticket['date'],
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Gap(appLayout.getHeight(5)),
                      Text(
                        "DATE",
                        style: iscolor == null
                            ? styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle4,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticket['departure_time'],
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Gap(appLayout.getHeight(5)),
                      Text(
                        "Departure Time",
                        style: iscolor == null
                            ? styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['number'].toString(),
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Gap(appLayout.getHeight(5)),
                      Text(
                        "Number",
                        style: iscolor == null
                            ? styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle4,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
