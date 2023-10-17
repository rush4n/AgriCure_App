import 'package:flutter/material.dart';

class Bold extends StatelessWidget {

  final double size;
  final Color color;
  final String text;
  const Bold({
     super.key,
     required this.text,
     this.color=Colors.black,
     this.size=30.0,
   });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
        color:color,
        fontSize: size,
        fontWeight: FontWeight.bold,

      )
    );
  }
}