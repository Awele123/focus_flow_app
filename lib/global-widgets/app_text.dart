import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.text,
    this.color,
    this.fontSize,
    this.maxLine,
    this.textAlign,
    this.fontWeight,
  });
  final String? text;
  final Color? color;
  final double? fontSize;
  final int? maxLine;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Text(
      text ??
          "Master the Pomodoro Technique and transform your productivity. Work in focused 25-minute intervals, take strategic breaks, and achieve more than ever before.",
      maxLines: maxLine,
      textAlign: textAlign ?? TextAlign.left,
      style: TextStyle(
        fontSize: fontSize ?? size.width * 0.048,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? Colors.white,
      ),
    );
  }
}
