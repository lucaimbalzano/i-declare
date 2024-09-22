import 'package:flutter/material.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';
import 'package:i_declare/core/utility/app_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.lightWhite.withOpacity(0.6),
      ),
      child: const Center(
        child: CustomTextInter(
            text: 'Apply', size: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
