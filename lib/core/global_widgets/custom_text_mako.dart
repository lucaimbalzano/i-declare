import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextMako extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final int? max;
  final TextAlign? textAlign;
  const CustomTextMako({
    super.key,
    required this.text,
    this.max,
    this.textAlign,
    required this.size,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: max,
      textAlign: textAlign,
      text,
      style: GoogleFonts.mako(
          textStyle: TextStyle(fontSize: size, fontWeight: fontWeight)),
    );
  }
}
