import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedGroup = "Master".obs;
  var selectedSubItem = "Dashboard".obs; // Default screen

  void selectMenu(String group, String subItem) {
    selectedGroup.value = group;
    selectedSubItem.value = subItem;
  }

  String get currentTitle =>
      selectedSubItem.value.isNotEmpty ? selectedSubItem.value : "Home";
}
