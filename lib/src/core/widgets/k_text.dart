import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  const KText({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 18,
        color: color ?? Colors.black,
      ),
    );
  }
}
