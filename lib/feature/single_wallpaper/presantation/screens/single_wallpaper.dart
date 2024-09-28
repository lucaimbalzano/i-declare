import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'package:i_declare/feature/single_wallpaper/presantation/widgets/apply_button.dart';

class SingleWallpaper extends StatelessWidget {
  const SingleWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 1,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColor.deepPurple,
              shape: BoxShape.rectangle,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '"I know my worth,\nas I am the wonderful\nwork of God."',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.start,
                    '(Psalm 139:14)',
                    style: GoogleFonts.exo2(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'i-declare',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.exo2(
                      textStyle: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 50.r,
            left: 20.r,
            right: 20.r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    AppIcon.backButton,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppIcon.info,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100.r,
            right: 20.r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 180.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        AppIcon.heart,
                        height: 40.h,
                        width: 40.h,
                      ),
                      SvgPicture.asset(
                        AppIcon.download,
                        height: 40.h,
                        width: 40.h,
                      ),
                      SvgPicture.asset(
                        AppIcon.more,
                        height: 40.h,
                        width: 40.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 60.h,
        margin: EdgeInsets.only(left: 30.r),
        width: double.infinity,
        child: ApplyButton(
          onTap: () {},
        ),
      ),
    );
  }
}
