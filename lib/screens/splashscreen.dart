import 'dart:async';

import 'package:booking_app/OTP/phone.dart';
import 'package:booking_app/screens/botton_bar.dart';
import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/updated_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  var isLogin = false;
  var auth = FirebaseAuth.instance;
  checkifLogin() async {
    auth.authStateChanges().listen((User? user) {
      if (user != null && mounted) {
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  @override
  void initState() {
    checkifLogin();
    _timer = Timer(const Duration(seconds: 1), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  isLogin ? const BottomBar() : const MyPhone()));
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/img_1.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
