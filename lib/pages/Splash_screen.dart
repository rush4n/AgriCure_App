import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 120),
              Lottie.asset(
                  'assets/Animations/splash.json',
                reverse: false,
                repeat: false,
              ),

            ],
          ),
        ),
      ),

    );
  }
}
