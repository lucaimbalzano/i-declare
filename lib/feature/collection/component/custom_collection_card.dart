import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class CustomCollectionCard extends StatelessWidget {
  final bool? image;
  final bool? isColor;
  final Color color;
  final String text;
  final void Function()? onTap;
  const CustomCollectionCard(
      {super.key,
      required this.color,
      required this.text,
      this.image,
      this.isColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 25.r,horizontal: 20.r),
        margin: EdgeInsets.only(top: 10.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomTextInter(
                  text: text,
                  size: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: isColor == true
                      ? AppColor.bubbleColor.withOpacity(0.2)
                      : AppColor.primaryWhite,
                ),
                SizedBox(
                  width: 5.r,
                ),
                image == true
                    ? SvgPicture.asset(
                        AppIcon.bubble,
                        height: 24.h,
                        width: 24.w,
                      )
                    : const SizedBox()
              ],
            ),
            CustomTextInter(
                text: '100 Declarations',
                size: 12.sp,
                color: isColor == true
                    ? AppColor.bubbleColor.withOpacity(0.2)
                    : AppColor.primaryWhite,
                fontWeight: FontWeight.w400)
          ],
        ),
      ),
    );
  }
}
