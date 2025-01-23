import 'package:flutter/material.dart';
import 'package:test_widgets/controllers/font_styles.dart';

import 'onboarding_screen.dart';
import 'signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then(
      (value) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return  SignupScreen();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Wave",
          style: AppTextStyles().boldText,
        ),
      ),
    );
  }
}
