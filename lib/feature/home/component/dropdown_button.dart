import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'dropdown_controller/drop_down_controller.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    final DropdownController controller = Get.put(DropdownController());

    return Obx(() => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 5),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: controller.selectedItem.value,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SvgPicture.asset(
                    AppIcon.arrowDown,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                dropdownColor: AppColor.lightGrey,
                items: controller.items.map((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: CustomTextInter(
                          text: value,
                          size: 24.sp,
                          fontWeight: FontWeight.w600));
                }).toList(),
                onChanged: (newValue) {
                  controller.changeSelectedItem(newValue!);
                },
              ),
            ),
          ],
        ));
  }
}
