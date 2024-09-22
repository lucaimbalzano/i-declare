import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class CustomTextfeildTittle extends StatelessWidget {
  final String tittle;
  const CustomTextfeildTittle({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 15.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextInter(text: tittle, size: 16.sp, fontWeight: FontWeight.w500),
          SizedBox(
            height: 5.h,
          ),
          Container(
            padding: EdgeInsets.all(5.r),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.border, width: 1),
            ),
            child: TextField(
              readOnly: true,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: 'Select',
                  hintStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xff7A7E80)),
                  contentPadding: EdgeInsets.all(10.r),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcon.arrowDown)),
                  border: InputBorder.none,
                  filled: false,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
