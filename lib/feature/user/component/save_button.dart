import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.r),
      onTap: () {},
      child: Container(
        width: 130.w,
        padding: EdgeInsets.symmetric(vertical: 20.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.lightWhite.withOpacity(0.6),
        ),
        child: const Center(
          child: CustomTextInter(
              text: 'Save', size: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
