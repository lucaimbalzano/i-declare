import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class SelectBox extends StatelessWidget {
  const SelectBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168.h,
      width: 196.w,
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
          color: AppColor.primaryBackground,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColor.border,
            width: 1,
          ),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25))]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextInter(
                  text: 'Up', size: 12.sp, fontWeight: FontWeight.w600),
              const Icon(
                Icons.done_rounded,
                color: AppColor.border,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextInter(
                  text: 'Bottom', size: 12.sp, fontWeight: FontWeight.w600),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextInter(
                  text: 'Right', size: 12.sp, fontWeight: FontWeight.w600),
            ],
          ),
        ],
      ),
    );
  }
}
