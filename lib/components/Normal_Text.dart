import 'package:flutter/material.dart';

class Normal extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  const Normal({
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
          height: 1.3,
        color:color,
        fontSize: size,
        )
    );
  }
}
