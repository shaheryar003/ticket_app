import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class appLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidgth() {
    return Get.width;
  }

  static getHeight(double pixel) {
    double x = getScreenHeight() / pixel;
    return getScreenHeight() / x;
  }

  static getWidth(double pixel) {
    double x = getScreenWidgth() / pixel;
    return getScreenWidgth() / x;
  }
}
