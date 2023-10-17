import 'package:agricure/components/Glass_Box.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro1 extends StatefulWidget {
  final PageController controller;
  const Intro1({super.key, required this.controller});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    PageController controller = widget.controller;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15,50,15,0),
        child: Column(
          children: [
            GlassBox(
              width: double.maxFinite,
              height: 350,
              color1: const Color(0xfff4f2f5),
              color2: const Color(0xccf9e4ff),
              color3: const Color(0xccdae3ff),
              color4: const Color(0xff401479),
              color5: const Color(0x338a1edf),
              val1:0.423,val2:0.762,val3: 0.997,
              text1: "Plant",
              text2: "Chat",
              text3: "There's a talking robot in the app that you can talk to if you have questions about plants."
                  " It's like having a friendly plant helper.",
              sized:40,
              my_controller: controller,
              page: 1,

            ),
            const SizedBox(height: 80,),
            Container(
              child: Lottie.asset(
                  'assets/Animations/Bot.json',
                   reverse: false,
                   repeat: true,
              )
            )
          ],
        ),
      ),
    );
  }
}
