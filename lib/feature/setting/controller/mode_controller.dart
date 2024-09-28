import 'package:get/get.dart';

class ModeController extends GetxController {
  RxInt selectedIndex = 2.obs;

  void changeMode(int index) {
    selectedIndex.value = index;
  }
}
