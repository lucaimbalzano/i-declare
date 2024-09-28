import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/user/controller/category_controller.dart';
import 'package:i_declare/feature/user/presentation/widgets/custom_card_category.dart';

class CategoryGridview extends StatelessWidget {
  const CategoryGridview({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoryController categoryController = Get.put(CategoryController());

    return GridView.builder(
      itemCount: AppConstant.identityCategory.length,
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 2.15.w / 0.9.h,
      ),
      itemBuilder: (context, index) {
        var data = AppConstant.identityCategory[index];

        return Obx(() {
          bool isSelected = categoryController.selectedIndex.value == index;

          return GestureDetector(
            onTap: () {
              categoryController.updateSelectedIndex(index);
            },
            child: CustomCardCategory(
              text: data['tittle'],
              isColor: isSelected,
            ),
          );
        });
      },
    );
  }
}
