import 'package:agricure/components/Glass_Box.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro4 extends StatefulWidget {
  final PageController controller3;
  const Intro4({super.key, required this.controller3});
  @override
  State<Intro4> createState() => _Intro4State();
}

class _Intro4State extends State<Intro4> {

  @override
  Widget build(BuildContext context) {
    PageController controller3 = widget.controller3;
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15,50,15,0),
        child: Column(
          children: [
            GlassBox(
              width: double.maxFinite,
              height: 350,
              color1: const Color(0xeaf7f2f1),
              color2: const Color(0xccfeeac0),
              color3: const Color(0xccfdded0),
              color4: const Color(0xff581111),
              color5: const Color(0xccfbc07f),
              val1:0.194 ,val2:0.576 ,val3:0.962 ,
              text1: "Picture",
              text2: "Scanner",
              text3: "It's like a special machine that can understand"
                  " pictures of plants and see if they are healthy or sick.",
              sized: 63, my_controller: controller3,
              page: 0,
            ),
            const SizedBox(height: 70,),
            Container(
              child: Lottie.asset(
                  'assets/Animations/Scan2.json',
                  reverse: false,
                  repeat: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
