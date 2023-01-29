import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/utils/applayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class columnText extends StatelessWidget {
  final String UpperText;
  final String LowerText;
  final CrossAxisAlignment alignment;
  const columnText(
      {super.key,
      required this.UpperText,
      required this.LowerText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: alignment,
          children: [
            Text(
              UpperText,
              style: styles.headlineStyle3.copyWith(color: Colors.black),
            ),
            Gap(appLayout.getHeight(5)),
            Text(
              LowerText,
              style: styles.headlineStyle4,
            ),
            Gap(appLayout.getHeight(5))
          ],
        ),
      ],
    );
  }
}
