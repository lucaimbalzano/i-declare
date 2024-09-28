import 'package:get/get.dart';

class CardController extends GetxController {
  var selectedIndex = (-1).obs;

  void selectCard(int index) {
    selectedIndex.value = index;
  }
}
