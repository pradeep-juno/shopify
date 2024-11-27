import 'package:get/get.dart';

class HomeController extends GetxController {
  // Observable variable to toggle search bar visibility
  var isSearchVisible = false.obs;

  // Method to toggle the search bar visibility
  void toggleSearchBar() {
    isSearchVisible.value = !isSearchVisible.value;
  }
}
