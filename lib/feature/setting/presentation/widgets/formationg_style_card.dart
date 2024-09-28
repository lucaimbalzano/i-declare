import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class FormationgStyleCard extends StatefulWidget {
  const FormationgStyleCard({super.key});

  @override
  State<FormationgStyleCard> createState() => _FormationgStyleCardState();
}

class _FormationgStyleCardState extends State<FormationgStyleCard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Container(
      width: double.infinity,
      height: 32.h,
      padding: EdgeInsets.all(2.r),
      decoration: BoxDecoration(
        color: AppColor.dark,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: TabBar(
              automaticIndicatorColorAdjustment: true,
              dividerColor: AppColor.dark,
              labelColor: AppColor.primaryWhite,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColor.border,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              controller: tabController,
              dragStartBehavior: DragStartBehavior.down,
              isScrollable: false, // Make tabs cover the full width
              tabs: [
                Tab(
                  child: CustomTextInter(
                    text: 'Light',
                    size: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Tab(
                  child: CustomTextInter(
                    text: 'Smooth',
                    size: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Tab(
                  child: CustomTextInter(
                    text: 'Rigid',
                    size: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      CustomTextInter(
                        text: '|',
                        size: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomTextInter(
                        text: 'Sleek',
                        size: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
