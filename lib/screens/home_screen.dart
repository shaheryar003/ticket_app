import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:booking_app/screens/hotel_screen.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_Info_list.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:booking_app/widgets/viewall.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundColor,
      body: ListView(
        children: [
          Gap(appLayout.getHeight(40)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: appLayout.getWidth(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: styles.headlineStyle3,
                        ),
                        Gap(appLayout.getHeight(5)),
                        Text("Book Tickets", style: styles.headlineStyle1),
                      ],
                    ),
                    Container(
                      width: appLayout.getWidth(50),
                      height: appLayout.getHeight(50),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(appLayout.getHeight(10)),
                          // ignore: prefer_const_constructors
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  const AssetImage("assets/images/img_1.png"))),
                    ),
                  ],
                ),
                Gap(appLayout.getHeight(25)),
                InkWell(
                  onTap: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question,
                      headerAnimationLoop: true,
                      animType: AnimType.bottomSlide,
                      title: 'HAN BHAI',
                      desc: 'Sirf UI BANAYA HAI NA BE...',
                      buttonsTextStyle: const TextStyle(color: Colors.black),
                      showCloseIcon: false,
                      btnCancelOnPress: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.warning,
                          headerAnimationLoop: true,
                          animType: AnimType.bottomSlide,
                          title: 'HAN BHAI',
                          desc: 'OK DABANE PE MAUT AA RAHI?????',
                          buttonsTextStyle:
                              const TextStyle(color: Colors.black),
                          showCloseIcon: false,
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      },
                      btnOkOnPress: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          headerAnimationLoop: true,
                          animType: AnimType.bottomSlide,
                          title: 'HAN BHAI',
                          desc: 'Samaj gae na ??? Dubara na Dabana',
                          buttonsTextStyle:
                              const TextStyle(color: Colors.black),
                          showCloseIcon: false,
                          btnCancelOnPress: () {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.warning,
                              headerAnimationLoop: true,
                              animType: AnimType.bottomSlide,
                              title: 'HAN BHAI',
                              desc: 'OK DABANE MAIN MAUT  AA RAHI??',
                              buttonsTextStyle:
                                  const TextStyle(color: Colors.black),
                              showCloseIcon: false,
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                            ).show();
                          },
                          btnOkOnPress: () {},
                        ).show();
                      },
                    ).show();
                  },
                  child: InkWell(
                    onTap: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.question,
                        headerAnimationLoop: true,
                        animType: AnimType.bottomSlide,
                        title: 'HAN BHAI',
                        desc: 'Sirf UI BANAYA HAI NA BE...',
                        buttonsTextStyle: const TextStyle(color: Colors.black),
                        showCloseIcon: false,
                        btnCancelOnPress: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.warning,
                            headerAnimationLoop: true,
                            animType: AnimType.bottomSlide,
                            title: 'HAN BHAI',
                            desc: 'OK DABANE PE MAUT AA RAHI?????',
                            buttonsTextStyle:
                                const TextStyle(color: Colors.black),
                            showCloseIcon: false,
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                        },
                        btnOkOnPress: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            headerAnimationLoop: true,
                            animType: AnimType.bottomSlide,
                            title: 'HAN BHAI',
                            desc: 'Samaj gae na ??? Dubara na Dabana',
                            buttonsTextStyle:
                                const TextStyle(color: Colors.black),
                            showCloseIcon: false,
                            btnCancelOnPress: () {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.warning,
                                headerAnimationLoop: true,
                                animType: AnimType.bottomSlide,
                                title: 'HAN BHAI',
                                desc: 'OK DABANE MAIN MAUT  AA RAHI??',
                                buttonsTextStyle:
                                    const TextStyle(color: Colors.black),
                                showCloseIcon: false,
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              ).show();
                            },
                            btnOkOnPress: () {},
                          ).show();
                        },
                      ).show();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(appLayout.getHeight(10)),
                          color: Color(0xfff4f6fd)),
                      padding: EdgeInsets.symmetric(
                          horizontal: appLayout.getHeight(12),
                          vertical: appLayout.getHeight(12)),
                      child: Row(
                        children: [
                          const Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFbfc205),
                          ),
                          Text(
                            " Search",
                            style: styles.headlineStyle4,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Gap(appLayout.getHeight(40)),
                viewAll(text: "Upcoming Flights"),
                Gap(appLayout.getHeight(15)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: appLayout.getHeight(20), right: appLayout.getHeight(20)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList
                    .map((singleTicket) => ticketView(
                          ticket: singleTicket,
                        ))
                    .toList()
                    .cast<Widget>(),
              ),
            ),
          ),
          Container(
              padding:
                  EdgeInsets.symmetric(horizontal: appLayout.getHeight(20)),
              child: viewAll(text: "Hotels")),
          Gap(appLayout.getHeight(15)),
          Padding(
            padding: EdgeInsets.only(left: appLayout.getHeight(20)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList
                    .map((singleHotel) => hotelScreen(hotel: singleHotel))
                    .toList()
                    .cast<Widget>(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
