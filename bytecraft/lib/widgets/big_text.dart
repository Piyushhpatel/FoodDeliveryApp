import 'package:bytecraft/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size = 0;
  TextOverflow overflow;

  BigText(
      {super.key,
      this.color = const Color(0xFF332d3b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: size == 0 ? Dimensions.font20 : size,
          color: color,
          fontWeight: FontWeight.w400),
    );
  }
}
