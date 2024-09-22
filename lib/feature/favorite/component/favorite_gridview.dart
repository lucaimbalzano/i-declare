import 'package:flutter/material.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/favorite/component/favorite_card.dart';

class FavoriteGridview extends StatelessWidget {
  const FavoriteGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: AppConstant.favoriteList.length,
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 40,
          childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = AppConstant.favoriteList[index];
        return FavoriteCard(
          text: data['tittle'],
          color1: data['color1'],
          color2: data['color2'],
        );
      },
    );
  }
}
