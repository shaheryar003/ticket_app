import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:colorful_progress_indicators/colorful_progress_indicators.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);
  static String verify = "";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();
  var phone = "";
  bool isLoading = false;
  bool empty = true;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+92";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundColor,
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img_1.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Phone Verification",
                style: styles.headlineStyle1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We need to register your phone before getting started!",
                style: styles.headlineStyle3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                        empty = false;
                      },
                      onSubmitted: (value) {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: styles.primaryColor),
                  onPressed: () async {
                    if (phone.length != 10) {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.warning,
                        headerAnimationLoop: true,
                        animType: AnimType.bottomSlide,
                        title: 'HAN BHAI',
                        desc: 'Sahi Number Abu dale ga????????',
                        buttonsTextStyle: const TextStyle(color: Colors.black),
                        showCloseIcon: false,
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      ).show();
                    } else if (empty) {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.warning,
                        headerAnimationLoop: true,
                        animType: AnimType.bottomSlide,
                        title: 'HAN BHAI',
                        desc: 'OTP HAWA MAIN BHEJU??????',
                        buttonsTextStyle: const TextStyle(color: Colors.black),
                        showCloseIcon: false,
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      ).show();
                    } else {
                      setState(() {
                        isLoading = true;
                      });
                      await Future.delayed(const Duration(seconds: 5));
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${countryController.text + phone}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {
                          Fluttertoast.showToast(
                              msg: e.toString(),
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 36.0);
                        },
                        codeSent: (String verificationId, int? resendToken) {
                          MyPhone.verify = verificationId;
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                      setState(() {
                        isLoading = false;
                      });
                      Fluttertoast.showToast(
                          msg: 'Hekki',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 36.0);

                      Navigator.pushNamed(context, 'verify');
                    }
                  },
                  child: (isLoading)
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 1.5,
                          ),
                        )
                      : const Text('REGISTER'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
