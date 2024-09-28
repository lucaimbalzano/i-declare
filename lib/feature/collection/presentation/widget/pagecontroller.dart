import 'package:get/get.dart';

class PageControllerCollection extends GetxController {
  RxBool isPage = false.obs;
  RxString tittle = 'Collection'.obs;

  changePage() {
    isPage.value = !isPage.value;
    if (isPage.value == true) {
      tittle.value = 'Generated Collections';
    } else {
      tittle.value = 'Collection';
    }
  }
}
