import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class CustomCardCategory extends StatelessWidget {
  final String text;
  final bool? isColor;
  const CustomCardCategory({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.r, vertical: 20.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: isColor == true ? AppColor.softPurple : AppColor.greySoft,
          border: Border.all(
            color: isColor == true ? AppColor.softPurple : AppColor.border,
            width: 2.w,
          )),
      child: Center(
        child: CustomTextInter(
            text: text, size: 16.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
