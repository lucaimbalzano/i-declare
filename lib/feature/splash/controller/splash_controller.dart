import 'dart:async';

import 'package:get/get.dart';
import 'package:i_declare/feature/nav_bar/presentation/screens/nav_bar.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offAll(const NavBar());
      },
    );
  }
}
