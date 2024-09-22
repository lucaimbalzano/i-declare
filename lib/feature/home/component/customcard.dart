import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'package:i_declare/feature/favorite/presentation/favorite_list.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final String text;
  final bool? isBlack;
  final bool? textSize;
  final void Function()? onTap;

  const CardWidget(
      {super.key,
      required this.color,
      required this.text,
      this.onTap,
      this.textSize,
      this.isBlack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: textSize == true
            ? EdgeInsets.all(16.r)
            : EdgeInsets.only(left: 10.r, right: 10.r, top: 40.r, bottom: 10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: textSize == true ? 14.sp : 22.sp,
                color: isBlack == true ? AppColor.dark : AppColor.primaryWhite,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '(Genesis 1:27)',
              style: GoogleFonts.roboto(
                fontSize: 8.2.sp,
                color: isBlack == true ? AppColor.dark : AppColor.primaryWhite,
              ),
            ),
            SizedBox(
              height: textSize == true ? 5.h : 20.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Get.to(const FavoriteList());
                },
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
