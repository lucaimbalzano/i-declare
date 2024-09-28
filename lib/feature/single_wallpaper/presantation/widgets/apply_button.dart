import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class ApplyButton extends StatelessWidget {
  final void Function()? onTap;
  const ApplyButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.r),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.lightWhite.withOpacity(0.6),
        ),
        child: const Center(
          child: CustomTextInter(
              text: 'Apply', size: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
