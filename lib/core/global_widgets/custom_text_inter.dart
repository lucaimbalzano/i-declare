import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInter extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final int? max;
  final Color? color;
  final TextAlign? textAlign;
  const CustomTextInter({
    super.key,
    required this.text,
    this.max,
    this.textAlign,
    required this.size,
    required this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: max,
      textAlign: textAlign,
      text,
      style: GoogleFonts.inter(
          textStyle:
              TextStyle(fontSize: size, fontWeight: fontWeight, color: color)),
    );
  }
}
