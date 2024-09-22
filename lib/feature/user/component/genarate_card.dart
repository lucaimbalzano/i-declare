import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class GanarateCard extends StatelessWidget {
  final String number;
  const GanarateCard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 70.w,
      margin: EdgeInsets.only(left: 13.r),
      decoration: BoxDecoration(
          color: AppColor.greySoft,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: const Color(0xff5A5A5A), width: 1.2)),
      child: Center(
          child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          textAlign: TextAlign.center,
          number,
          style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w700, fontSize: 22.sp),
        ),
      )),
    );
  }
}
