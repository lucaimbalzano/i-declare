import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'package:i_declare/feature/single_wallpaper/component/add_button.dart';

class SingleWallpaper extends StatelessWidget {
  const SingleWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.deepPurple,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
              SizedBox(
                height: 40.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
              Row(
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
              const AddButton()
            ],
          ),
        ),
      ),
    );
  }
}
