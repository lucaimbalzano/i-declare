import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class GanarateCard extends StatelessWidget {
  final String number;
  final bool isSelected;

  const GanarateCard({
    super.key,
    required this.number,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.93.h,
      width: 70.43.w,
      margin: EdgeInsets.only(left: 13.r),
      decoration: BoxDecoration(
        color: isSelected ? AppColor.softPurple : AppColor.greySoft,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
            color: isSelected ? AppColor.softPurple : const Color(0xff5A5A5A),
            width: 1.2),
      ),
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            number,
            textAlign: TextAlign.center,
            style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
            ),
          ),
        ),
      ),
    );
  }
}
