import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';
import 'package:i_declare/feature/home/component/container_box_category.dart';
import 'package:i_declare/feature/home/component/dropdown_button.dart';
import 'package:i_declare/feature/home/component/gridview_builder.dart';
import 'package:i_declare/feature/nav_bar/nav_controller/nav_controller.dart';
import '../../../core/global_widgets/custom_text_mpplus.dart';
import '../component/Contaier_wallpaper.dart';
import '../component/dropdown_controller/drop_down_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Get.put(NavController());
    final dropdownController =
        Get.put(DropdownController()); // Initialize controller

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
              onPressed: () {
                nav.isTab.value = 1;
              },
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Observe changes to featuredText and update UI
                  Obx(() => CustomTextInter(
                      text: dropdownController.featuredText.value,
                      size: dropdownController.textSize.value == true
                          ? 20.sp
                          : 32.sp,
                      fontWeight: FontWeight.w700)),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColor.primaryGrey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_outlined,
                            color: AppColor.primaryWhite,
                          ))
                    ],
                  )
                ],
              ),
              const ContainerWallpaper(),

              // Observe changes to categories and update the UI
              Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContainerBoxCategory(
                            color: AppColor.purple,
                            text: dropdownController.categories[0]),
                        ContainerBoxCategory(
                            color: AppColor.lightPurple,
                            text: dropdownController.categories[1]),
                        ContainerBoxCategory(
                            color: AppColor.seekPurple,
                            text: dropdownController.categories[2]),
                      ])),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [CustomDropdownButton()],
                    ),
                    Container(
                      padding: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                          color: AppColor.primaryGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.purple100),
                            child: SvgPicture.asset(
                              AppIcon.collectionNew,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.r),
                            padding: EdgeInsets.all(3.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.lightGrey),
                            child: SvgPicture.asset(AppIcon.collection,
                                height: 24.h, width: 24.w),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Wrap GridView in a SizedBox with a fixed height or use ShrinkWrap
              const CustomGridView()
            ],
          ),
        ),
      ),
    );
  }
}
