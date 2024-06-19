import 'package:flutter/material.dart';

import '../../course_ui/color/light_color.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const TitleText({super.key,
      required this.text,
      this.fontSize = 18,
      this.color = LightColor.titleTextColor,
      this.fontWeight = FontWeight.w800});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontFamily: 'PaynetB',
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }
}
