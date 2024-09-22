import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_mako.dart';

class ContainerBoxCategory extends StatelessWidget {
  final Color color;
  final String text;
  const ContainerBoxCategory(
      {super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 103.w,
      margin: EdgeInsets.only(top: 10.r),
      padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: color,
      ),
      child: Center(
        child: CustomTextMako(
            text: text, size: 12.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
