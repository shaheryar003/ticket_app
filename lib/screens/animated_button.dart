import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class animatedBtn extends StatelessWidget {
  final String firstText;
  final String secondText;
  final IconData firstIcon;
  final IconData secondIcon;

  const animatedBtn(
      {super.key,
      required this.firstText,
      required this.firstIcon,
      required this.secondText,
      required this.secondIcon});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return AnimatedButtonBar(
      animationDuration: const Duration(milliseconds: 300),
      radius: 50.0,
      curve: Curves.easeInQuart,
      padding: const EdgeInsets.all(16.0),
      backgroundColor: Color(0xfff4f6fd),
      foregroundColor: Colors.grey.shade300,
      elevation: 15,
      borderColor: Colors.blue.shade400,
      borderWidth: 1,
      innerVerticalPadding: 12,
      children: [
        ButtonBarEntry(
            onTap: () => print('First item tapped'),
            child: Padding(
              padding: EdgeInsets.only(right: appLayout.getWidth(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: appLayout.getWidth(15)),
                    child: Text(
                      firstText,
                      style:
                          styles.headlineStyle3.copyWith(color: Colors.black),
                    ),
                  ),
                  Icon(firstIcon)
                ],
              ),
            )),
        ButtonBarEntry(
          onTap: () => print('Second item tapped'),
          child: Padding(
            padding: EdgeInsets.only(right: appLayout.getWidth(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  secondText,
                  style: styles.headlineStyle3.copyWith(color: Colors.black),
                ),
                Icon(secondIcon)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
