import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'package:i_declare/feature/splash/presentation/splash.dart';

class Ideclare extends StatelessWidget {
  const Ideclare({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'I declare',
          debugShowCheckedModeBanner: false,
          theme: _darkTheme(),
          home: const Splash(),
        );
      },
    );
  }

  ThemeData _darkTheme() {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.primaryBackground,
        brightness: Brightness.dark,
        splashFactory: NoSplash.splashFactory,
        appBarTheme:
            const AppBarTheme(backgroundColor: AppColor.primaryBackground),
        iconTheme: const IconThemeData(color: Color(0xffD9D9D9), size: 24),
        expansionTileTheme: ExpansionTileThemeData(
            shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        )),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              iconColor:
                  WidgetStateColor.resolveWith((states) => Colors.white)),
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.inter(
            fontSize: 7.sp,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: GoogleFonts.inter(
            fontSize: 15.sp,
            color: const Color(0xffECECEC),
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: GoogleFonts.inter(
            fontSize: 14.sp,
            color: const Color(0xffEEEEEE),
            fontWeight: FontWeight.w400,
          ),
          bodySmall: GoogleFonts.inter(
            fontSize: 12.sp,
            color: const Color(0xffD6D3D3),
            fontWeight: FontWeight.w400,
          ),
        ));
  }
}
