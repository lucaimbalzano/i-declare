import 'package:get/get.dart';

class GridViewSelectController extends GetxController {
  RxInt isValue = 1.obs;

  changeGridView(int number) {
    isValue.value = number;
  }
}
