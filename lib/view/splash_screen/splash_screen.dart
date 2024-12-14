import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api/utilts/colors_const.dart';
import 'package:news_api/view/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   ImageConstants.MYAPPLOGO,
            //   height: 100,
            //   width: 125,
            //   fit: BoxFit.fill,
            // ),
            SizedBox(width: 9),
            Text("NEWS",
                style: GoogleFonts.libreCaslonText(
                    color: ColorConstants.PRIMARY,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
