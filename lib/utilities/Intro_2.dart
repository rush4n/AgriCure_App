import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:agricure/components/Glass_Box.dart';

class Intro2 extends StatefulWidget {
  final PageController controller1;
  const Intro2({super.key, required this.controller1});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    PageController controller1 = widget.controller1;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15,50,15,0),
        child: Column(
          children: [
            GlassBox(
              width: double.maxFinite,
              height: 350,
              color1: const Color(0xccffffff),
              color2: const Color(0xffdcf8ea),
              color3: const Color(0xffbff7fa),
              color4: const Color(0xff255173),
              color5: const Color(0xffb5d5ea),
              val1:0, val2: 0.644,val3:1 ,
              text1: "Magic ",
              text2: "Plant Doctor ",
              text3: "he app can look at pictures of sick plants and tell you what's wrong with them,"
                  " just like a magic doctor for plants!  ",
              sized: 40, my_controller: controller1,
              page: 2,
            ),
         const SizedBox(height: 100,),
          Container(
            child: Lottie.asset(
              'assets/Animations/Farmer.json',
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

