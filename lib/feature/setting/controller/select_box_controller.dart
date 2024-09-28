import 'package:get/get.dart';

class SelectBoxController extends GetxController {
  RxBool isUp = true.obs;
  RxBool isBottom = false.obs;
  RxBool isRight = false.obs;
  RxInt isIndex = 0.obs;

  change() {
    if (isIndex == 0) {
      isUp.value = true;
      isBottom.value = false;
      isRight.value = false;
    } else if (isIndex == 1) {
      isBottom.value = true;
      isUp.value = false;
      isRight.value = false;
    } else if (isIndex == 2) {
      isUp.value = false;
      isBottom.value = false;
      isRight.value = true;
    }
  }
}
