import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:booking_app/widgets/columnText.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  signOut() async {
    await auth.signOut();
  }

  @override
  void initState() {
    // TODO: implement initState
    signOut();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: appLayout.getHeight(20),
            vertical: appLayout.getHeight(20)),
        children: [
          Gap(appLayout.getHeight(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: appLayout.getHeight(86),
                width: appLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      appLayout.getHeight(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(appLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: styles.headlineStyle1,
                  ),
                  Text(
                    "New York",
                    style: styles.headlineStyle4,
                  ),
                  Gap(5),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(appLayout.getHeight(100)),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "Premium Status",
                          style: styles.headlineStyle2.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "Edit",
                    style:
                        styles.textStyle.copyWith(color: styles.primaryColor),
                  )
                ],
              )
            ],
          ),
          Gap(8),
          Divider(
            color: Colors.grey,
          ),
          Gap(3),
          Stack(
            children: [
              Container(
                height: appLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: styles.primaryColor,
                  borderRadius: BorderRadius.circular(
                    appLayout.getHeight(18),
                  ),
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(appLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: Color(0xff264cd2)),
                        color: Colors.transparent),
                  )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(4),
                    Column(
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have 95 Flight Miles Left",
                          style: styles.headlineStyle4
                              .copyWith(color: Colors.white.withOpacity(0.8)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(35),
          Text(
            "Accumulated Miles",
            style: styles.headlineStyle2.copyWith(color: Colors.black),
          ),
          Container(
            child: Column(
              children: [
                Gap(30),
                Text(
                  "192802",
                  style: styles.headlineStyle1.copyWith(fontSize: 50),
                ),
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Accured",
                      style: styles.headlineStyle4,
                    ),
                    Text(
                      "23 May 2021",
                      style: styles.headlineStyle4,
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    columnText(
                        UpperText: "23,024",
                        LowerText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    columnText(
                        UpperText: "Airline CO",
                        LowerText: "Received From",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    columnText(
                        UpperText: "24",
                        LowerText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    columnText(
                        UpperText: "McDonals",
                        LowerText: "Received From",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    columnText(
                        UpperText: "52,320",
                        LowerText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    columnText(
                        UpperText: "Exuma",
                        LowerText: "Received From",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(30),
                Text(
                  "How to get more miles?",
                  style: styles.headlineStyle3
                      .copyWith(color: styles.primaryColor),
                ),
                Gap(20),
                InkWell(
                  onTap: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      headerAnimationLoop: true,
                      animType: AnimType.bottomSlide,
                      title: 'HAN BHAI',
                      desc: 'TATA BYE BYE??????',
                      buttonsTextStyle: const TextStyle(color: Colors.black),
                      showCloseIcon: false,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {
                        setState(() {
                          signOut();
                        });
                      },
                    ).show();

                    Navigator.pushNamedAndRemoveUntil(
                        context, 'phone', (route) => false);
                  },
                  child: Text(
                    "LOGOUT?",
                    style: styles.headlineStyle3.copyWith(color: Colors.red),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
