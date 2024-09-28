import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/utility/appconstant.dart';
import 'package:i_declare/feature/user/controller/genared_card_controller.dart';
import 'package:i_declare/feature/user/presentation/widgets/genarate_card.dart';

class GenarateCardListview extends StatelessWidget {
  const GenarateCardListview({super.key});

  @override
  Widget build(BuildContext context) {
    final CardController controller = Get.put(CardController());

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: AppConstant.genrateCard.length,
      itemBuilder: (context, index) {
        var data = AppConstant.genrateCard[index];

        return Obx(() => GestureDetector(
              onTap: () {
                controller.selectCard(index);
              },
              child: GanarateCard(
                number: data['tittle'],
                isSelected: controller.selectedIndex.value == index,
              ),
            ));
      },
    );
  }
}
