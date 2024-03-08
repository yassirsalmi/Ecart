import 'package:get/get.dart';

class MainPageController extends GetxController {
  final RxInt _selectedIndex = RxInt(0);

  void onItemTapped(int index) {
    _selectedIndex.value = index;
    // Consider additional navigation logic or data fetching if needed
  }

  int get selectedIndex => _selectedIndex.value;
}
