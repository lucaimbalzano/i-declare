import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'package:i_declare/feature/setting/controller/select_box_controller.dart';

class SelectBox extends StatelessWidget {
  const SelectBox({super.key});

  @override
  Widget build(BuildContext context) {
    final boxController = Get.put(SelectBoxController());
    return Container(
        height: 168.h,
        width: 196.w,
        padding: EdgeInsets.all(5.r),
        decoration: BoxDecoration(
            color: AppColor.primaryBackground,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: AppColor.border,
              width: 1.5,
            ),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25))]),
        child: Obx(
          () => ListView(
            children: [
              ListTile(
                onTap: () {
                  boxController.isIndex.value = 0;
                  boxController.change();
                },
                title: CustomTextInter(
                    text: 'Up', size: 12.sp, fontWeight: FontWeight.w600),
                trailing: boxController.isUp.value
                    ? SvgPicture.asset(
                        AppIcon.done,
                        height: 11.47.h,
                        width: 16.w,
                      )
                    : const SizedBox(),
              ),
              ListTile(
                onTap: () {
                  boxController.isIndex.value = 1;
                  boxController.change();
                },
                title: CustomTextInter(
                    text: 'Bottom', size: 12.sp, fontWeight: FontWeight.w600),
                trailing: boxController.isBottom.value
                    ? SvgPicture.asset(
                        AppIcon.done,
                        height: 11.47.h,
                        width: 16.w,
                      )
                    : const SizedBox(),
              ),
              ListTile(
                onTap: () {
                  boxController.isIndex.value = 2;
                  boxController.change();
                },
                title: CustomTextInter(
                    text: 'Right', size: 12.sp, fontWeight: FontWeight.w600),
                trailing: boxController.isRight.value
                    ? SvgPicture.asset(
                        AppIcon.done,
                        height: 11.47.h,
                        width: 16.w,
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ));
  }
}
