import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/feature/favorite/component/favorite_gridview.dart';

import '../../../core/apps_icon.dart';
import '../../../core/global_widgets/custom_text_inter.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10.r),
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
                      borderRadius: BorderRadius.circular(10.r),
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppIcon.filter,
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
                  height: 40.h,
                ),
                const FavoriteGridview()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
