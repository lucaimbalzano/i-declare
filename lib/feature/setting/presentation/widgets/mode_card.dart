import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class ModeCard extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final bool isSelected;

  const ModeCard({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: onTap,
      child: Container(
        width: 156.w,
        padding: EdgeInsets.symmetric(vertical: 15.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: isSelected ? AppColor.softPurple : AppColor.greySoft,
          border: Border.all(
            color: isSelected ? AppColor.softPurple : AppColor.border,
            width: 2.w,
          ),
        ),
        child: Center(
          child: CustomTextInter(
              text: text, size: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
