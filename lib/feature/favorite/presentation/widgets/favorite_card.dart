import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/feature/empty_favorite/presantation/screens/empty_favorite.dart';

class FavoriteCard extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;
  final Color color3;

  const FavoriteCard({
    super.key,
    required this.text,
    required this.color1,
    required this.color2, required this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 20.r, right: 10.r, top: 20.r, bottom: 10.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color1, color2,color3]),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(
                  fontSize: 22.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '(Genesis 1:27)',
              style: GoogleFonts.roboto(
                  fontSize: 7.sp, fontWeight: FontWeight.w400),
            ),
           const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Get.to(const EmptyFavorite());
                  },
                  child: SvgPicture.asset(
                    AppIcon.heart2,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
