import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_declare/feature/user/component/category_gridview.dart';
import 'package:i_declare/feature/user/component/genarate_card_listview.dart';
import 'package:i_declare/feature/user/component/save_button.dart';

import '../../../core/apps_icon.dart';
import '../../../core/global_widgets/custom_text_inter.dart';
import '../../../core/global_widgets/custom_text_mpplus.dart';

class User extends StatelessWidget {
  const User({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextInter(
                      text: 'Identity',
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
                      text: 'Category',
                      size: 13.sp,
                      fontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(height: 250.h, child: const CategoryGridview()),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(height: 50.h, child: const GenarateCardListview()),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SaveButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
