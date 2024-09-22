import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedItem = 'Trending'.obs;
  List<String> items = ['Trending', 'Fear', 'Anxiety'];
  RxBool textSize = false.obs;

  var featuredText = 'Featured'.obs;
  var categories = [' F E A R ', '    J O Y   ', ' A N G E R '].obs;

  void changeSelectedItem(String newItem) {
    selectedItem.value = newItem;
    updateUIBasedOnDropdown(newItem);
  }

  void updateUIBasedOnDropdown(String newItem) {
    if (newItem == 'Trending') {
      featuredText.value = 'Featured.';
      categories.value = ['F E A R', 'J O Y', 'A N G E R'];
      textSize.value = false;
    } else if (newItem == 'Fear') {
      featuredText.value = 'Suggested for you.';
      categories.value = ['Psalm (139:2)', 'Psalm (139:2)', 'Psalm (139:2)'];
      textSize.value = true;
    } else if (newItem == 'Anxiety') {
      featuredText.value = 'Suggested for you.';
      categories.value = ['Psalm (139:2)', 'Psalm (139:2)', 'Psalm (139:2)'];
      textSize.value = true;
    }
  }
}
