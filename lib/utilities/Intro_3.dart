import 'package:agricure/components/Glass_Box.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro3 extends StatefulWidget {
  final PageController controller2;
  const Intro3({super.key, required this.controller2});
  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    PageController controller2 = widget.controller2;
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15,50,15,0),
        child: Column(
          children: [
            GlassBox(
              width: double.maxFinite,
              height: 350,
              color1: const Color(0xccf8f9ff),
              color2: const Color(0xccd3ccfd),
              color3: const Color(0xcc8380ff).withOpacity(0.6),
              color4: const Color(0xff192559),
              color5: const Color(0x72192559),
              val1:0.300,val2: 0.717,val3:  0.973,
              text1: "Fast",
              text2: "Answers",
              text3: "The app can tell you what's wrong with the plant really quickly,"
                  " so you can help it get better fast.",
              sized: 63,
              my_controller: controller2,
              page: 3,
            ),
            const SizedBox(height: 90,),
            Container(
              child: Lottie.asset(
                  'assets/Animations/Chat2.json',
                repeat: false,
                reverse: false,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
