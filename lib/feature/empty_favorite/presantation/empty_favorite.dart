import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/app_images.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';

import '../../../core/apps_icon.dart';
import '../component/gradiant_text.dart';

class EmptyFavorite extends StatelessWidget {
  const EmptyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
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
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextInter(
                            text: 'Favorites',
                            size: 18.sp,
                            fontWeight: FontWeight.w700),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextInter(
                            text: 'Youve marked all of these as a favorite!',
                            size: 12.sp,
                            fontWeight: FontWeight.w400)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                ),
                Center(
                  child: Image.asset(
                    AppImage.loveBackground,
                    height: 253.h,
                    width: 253.w,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                ),
                const GradianText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
