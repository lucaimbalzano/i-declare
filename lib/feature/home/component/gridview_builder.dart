import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/single_wallpaper/presantation/single_wallpaper.dart';

import 'customcard.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: AppConstant.cardDetails.length,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        var data = AppConstant.cardDetails[index];
        return CardWidget(
          onTap: () {
            Get.to(const SingleWallpaper());
          },
          isBlack: data['black'],
          textSize: data['textSize'],
          color: data['color'],
          text: data['tittle'].toString(),
        );
      },
    );
  }
}
