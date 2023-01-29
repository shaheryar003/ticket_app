import 'package:booking_app/OTP/phone.dart';
import 'package:booking_app/OTP/verify.dart';
import 'package:booking_app/screens/botton_bar.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:booking_app/screens/splashscreen.dart';
import 'package:booking_app/screens/updated_bottom_bar.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TICKETING APP',
      theme: ThemeData(
        primaryColor: primiary,
      ),
      home: SplashScreen(),
      routes: {
        'phone': (context) => MyPhone(),
        'verify': (context) => MyVerify(),
        'bottomBar': (context) => BottomBar(),
      },
    );
  }
}
