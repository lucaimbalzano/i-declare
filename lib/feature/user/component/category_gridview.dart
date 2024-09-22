import 'package:flutter/material.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/user/component/custom_card_category.dart';

class CategoryGridview extends StatelessWidget {
  const CategoryGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: AppConstant.identityCategory.length,
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,childAspectRatio: 2.5),
      itemBuilder: (context, index) {
        var data = AppConstant.identityCategory[index];
        return CustomCardCategory(text: data['tittle'],isColor: data['isColor'],);
      },
    );
  }
}
