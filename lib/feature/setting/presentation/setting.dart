import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_declare/feature/setting/component/custom_textfeild_tittle.dart';
import 'package:i_declare/feature/setting/component/formationg_style_card.dart';
import 'package:i_declare/feature/setting/component/mode_card.dart';
import 'package:i_declare/feature/setting/component/select_box.dart';
import 'package:i_declare/feature/user/component/save_button.dart';

import '../../../core/apps_icon.dart';
import '../../../core/global_widgets/custom_text_inter.dart';
import '../../../core/global_widgets/custom_text_mpplus.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
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
                AppIcon.collecton_box,
                height: 14.h,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ModeCard(
                    text: 'Classic',
                    isColor: false,
                  ),
                  ModeCard(
                    text: 'Edit',
                    isColor: true,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextfeildTittle(tittle: 'Fade'),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SelectBox(),
                ],
              ),
              const CustomTextfeildTittle(tittle: 'Font Size'),
              const CustomTextfeildTittle(tittle: 'Font Style'),
              const CustomTextfeildTittle(tittle: 'Font Color'),
              const CustomTextfeildTittle(tittle: 'Background Color'),
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
