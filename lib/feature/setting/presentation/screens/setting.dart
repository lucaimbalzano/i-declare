import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/feature/setting/controller/mode_controller.dart';
import 'package:i_declare/feature/setting/presentation/widgets/custom_textfeild_tittle.dart';
import 'package:i_declare/feature/setting/presentation/widgets/formationg_style_card.dart';
import 'package:i_declare/feature/setting/presentation/widgets/mode_card.dart';
import 'package:i_declare/feature/setting/presentation/widgets/select_box.dart';
import 'package:i_declare/feature/user/presentation/widgets/save_button.dart';

import '../../../../core/apps_icon.dart';
import '../../../../core/global_widgets/custom_text_inter.dart';
import '../../../../core/global_widgets/custom_text_mpplus.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final modeControlller = Get.put(ModeController());
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcon.menu,
              height: 24.h,
              width: 24.w,
            )),
        title: CustomTextMpplus(
            text: 'I declare', size: 17.sp, fontWeight: FontWeight.bold),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcon.collectonBox,
                height: 24.h,
                width: 24.w,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextInter(
                      text: 'Editing',
                      size: 24.sp,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextInter(
                      text: 'Mode', size: 16.sp, fontWeight: FontWeight.w500),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => ModeCard(
                        onTap: () {
                          modeControlller.changeMode(1);
                        },
                        text: 'Classic',
                        isSelected: modeControlller.selectedIndex.value == 1,
                      )),
                  Obx(() => ModeCard(
                        onTap: () {
                          modeControlller.changeMode(2);
                        },
                        text: 'Edit',
                        isSelected: modeControlller.selectedIndex.value == 2,
                      )),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextfeildTittle(
                hintText: 'Select',
                dropdownItems: const [
                  'Smooth',
                  'Regular',
                  'Sick',
                  'Will',
                  'New'
                ],
                tittle: 'Fade',
                onChanged: (p0) {},
              ),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SelectBox(),
                ],
              ),
              CustomTextfeildTittle(
                onChanged: (p0) {},
                hintText: 'Select',
                dropdownItems: const ['10', '12', '16', '18', '20'],
                tittle: 'Font Size',
              ),
              CustomTextfeildTittle(
                hintText: 'Select',
                dropdownItems: const [
                  'Noraml',
                  'Medium',
                  'Bold',
                ],
                tittle: 'Font Style',
                onChanged: (p0) {},
              ),
              CustomTextfeildTittle(
                hintText: 'Select',
                dropdownItems: const [
                  'Red',
                  'Blue',
                  'Green',
                  'Yellow',
                  'Purple'
                ],
                tittle: 'Font Color',
                onChanged: (p0) {},
              ),
              CustomTextfeildTittle(
                onChanged: (p0) {},
                hintText: 'Select',
                dropdownItems: const [
                  'Red',
                  'Blue',
                  'Green',
                  'Yellow',
                  'Purple'
                ],
                tittle: 'Background Color',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomTextInter(
                      text: 'Formating Style',
                      size: 16.sp,
                      fontWeight: FontWeight.w500)
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const FormationgStyleCard(),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SaveButton(),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
