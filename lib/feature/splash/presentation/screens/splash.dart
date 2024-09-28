import 'package:flutter/material.dart';
import 'package:i_declare/core/global_widgets/custom_text_inter.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomTextInter(
          text: 'I declare',
          size: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
