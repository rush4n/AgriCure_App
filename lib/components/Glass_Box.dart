import 'dart:ui';
import 'package:agricure/components/Normal_Text.dart';
import 'package:agricure/components/Bold_Text.dart';
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final double val1;
  final double val2;
  final double val3;
  final String text1;
  final String text2;
  final String text3;
  final double sized;
  final PageController my_controller;
  final int page;


  const GlassBox({
    super.key,
    required this.width,
    required this.height,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.val1,
    required this.val2,
    required this.val3,
    required this.color4,
    required this.color5,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.sized,
    required this.my_controller,
    required this.page,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      child: Stack(children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0x19000000)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),

        //blur
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
        ),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: RadialGradient(
              center: const Alignment(-0.75, -0.634),
              radius: 1.15,
              colors: <Color>[
                color1,
                color2,
                color3,
              ],
              stops: <double>[val1, val2, val3],
            ), //gradient
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Bold(text: text1,color: color4,size: 40,),
                  Normal(text: text2,color: color4,size: 40,),
                  const SizedBox(height: 15),
                  SizedBox(
                      width: 280,
                      child: Normal(text:text3,color: color5,size:18,)
                  ),
                  SizedBox(height: sized),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(

                      backgroundColor: color4,
                      padding: const EdgeInsets.only(left: 30,right: 30,top:10 ,bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                      onPressed: () {
                        my_controller.animateToPage(page, duration:const Duration(microseconds: 500), curve: Curves.easeIn);
                      },
                      child: Bold(text:"Next",color: Colors.white,size: 20,)
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: Bold(text: "Skip",size: 20,color:color5)),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
