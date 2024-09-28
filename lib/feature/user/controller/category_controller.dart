import 'package:get/get.dart';

class CategoryController extends GetxController {
  var selectedIndex = 1.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
