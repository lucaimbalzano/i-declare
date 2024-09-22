import 'package:flutter/material.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/user/component/genarate_card.dart';

class GenarateCardListview extends StatelessWidget {
  const GenarateCardListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: AppConstant.genrateCard.length,



      itemBuilder: (context, index) {
        var data = AppConstant.genrateCard[index];
        return GanarateCard(number: data['tittle']);
      },
    );
  }
}
