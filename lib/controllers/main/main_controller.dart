import 'package:get/get.dart';

class MainPageController extends GetxController {
  final RxInt _selectedIndex = RxInt(0);

  void onItemTapped(int index) {
    // print('Item tapped: $index');
    _selectedIndex.value = index;
  }

  int get selectedIndex => _selectedIndex.value;
}
