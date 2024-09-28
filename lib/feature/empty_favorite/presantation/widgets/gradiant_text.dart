import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradianText extends StatelessWidget {
  const GradianText({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientTextCustom(
      gradient: const LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [Color(0xffA9A8A5), Color(0xff434341)],
      ),
      style: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w600,
      ),
      text: 'Oops! No favorites to display',
    );
  }
}

class GradientTextCustom extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientTextCustom({
    super.key,
    required this.text,
    required this.style,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
