import 'package:agricure/utilities/Intro_1.dart';
import 'package:agricure/utilities/Intro_2.dart';
import 'package:agricure/utilities/Intro_3.dart';
import 'package:agricure/utilities/Intro_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  final PageController _myController = PageController();
  final List<Color> activeDotColors=[
    const Color(0xff401479),
    const Color(0xff255173),
    const Color(0xff192559),
    const Color(0xff581111),

  ];
 double currentpage=0;
  @override
  void initState() {
    super.initState();
    // Listen to the page changes and update the currentPage variable
    _myController.addListener(() {
      setState(() {
        currentpage = _myController.page ?? 0.0;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _myController,
            scrollDirection: Axis.vertical,
            children: [
              Intro1(controller: _myController,),
              Intro2(controller1: _myController,),
              Intro3(controller2: _myController,),
              Intro4(controller3: _myController,),
            ],
          ),
          Container(
            alignment: const Alignment(0.75,-0.62),
            child: SmoothPageIndicator(
                controller: _myController,
                count: 4,
                axisDirection: Axis.vertical,
                effect: WormEffect(
                  dotColor:Colors.white,
                  activeDotColor: activeDotColors[currentpage.toInt()],
                  dotHeight:15,
                  dotWidth: 15,

                ),
            ),
          )
        ],
      ),
    );
  }
}
