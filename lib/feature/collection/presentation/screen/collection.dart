import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/global_widgets/custom_text_mpplus.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/collection/presentation/widget/custom_collection_card.dart';
import 'package:i_declare/feature/collection/presentation/widget/pagecontroller.dart';
import 'package:i_declare/feature/home/controller/drop_down_controller.dart';

import '../../../nav_bar/controller/nav_controller.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(PageControllerCollection());
    final navController = Get.put(NavController());
    final dropDownController = Get.put(DropdownController());
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
        body: Obx(
          () => pageController.isPage.value == true
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomTextInter(
                                text: pageController.tittle.value,
                                size: 24.sp,
                                fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 6,
                          child: ListView.builder(
                            itemCount: AppConstant.collectionCard2.length,
                            itemBuilder: (context, index) {
                              var data = AppConstant.collectionCard2[index];
                              return CustomCollectionCard(
                                onTap: () {
                                  if (index == 0) {
                                  } else if (index == 1) {
                                  } else if (index == 2) {
                                    navController.isTab.value = 0;
                                    dropDownController.selectedItem.value =
                                        'Anxiety';
                                    dropDownController.featuredText.value =
                                        'Suggested for you.';
                                    dropDownController.textSize.value = true;
                                    dropDownController.categories.value = [
                                      'Psalm (139:2)',
                                      'Psalm (139:2)',
                                      'Psalm (139:2)'
                                    ];
                                  } else if (index == 3) {
                                    pageController.changePage();
                                  }
                                },
                                color: data['color'],
                                text: data['tittle'],
                                image: data['image'],
                                isColor: data['isColor'],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomTextInter(
                                text: 'Collection',
                                size: 24.sp,
                                fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 6,
                          child: ListView.builder(
                            itemCount: AppConstant.collectionCard.length,
                            itemBuilder: (context, index) {
                              var data = AppConstant.collectionCard[index];
                              return CustomCollectionCard(
                                onTap: () {
                                  if (index == 0) {
                                  } else if (index == 1) {
                                  } else if (index == 2) {
                                    navController.isTab.value = 0;
                                    dropDownController.selectedItem.value =
                                        'Fear';
                                    dropDownController.featuredText.value =
                                        'Suggested for you.';
                                    dropDownController.textSize.value = true;
                                    dropDownController.categories.value = [
                                      'Psalm (139:2)',
                                      'Psalm (139:2)',
                                      'Psalm (139:2)'
                                    ];
                                  } else if (index == 3) {
                                    pageController.changePage();
                                  }
                                },
                                color: data['color'],
                                text: data['tittle'],
                                image: data['image'],
                                isColor: data['isColor'],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ));
  }
}
