import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/feature/single_wallpaper/presantation/screens/single_wallpaper.dart';

class ContainerWallpaper extends StatelessWidget {
  const ContainerWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.r),
      onTap: () {
        Get.to(const SingleWallpaper());
      },
      child: Container(
          margin: EdgeInsets.only(top: 10.r),
          padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 20.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF5043C6),
                Color(0xFF665BCC),
                Color(0xFF9E99CE)
              ], // Gradient colors
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '"I know my worth,\nas I am the wonderful\nwork of God."',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        '(Psalm 139:14)',
                        style: GoogleFonts.exo2(
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'i-declare',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.exo2(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
