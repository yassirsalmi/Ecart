import 'package:ecart/constants/colors.dart';
import 'package:ecart/controllers/main/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'card/my_card.dart';
import 'home/home_page.dart';
import 'profile/profile_page.dart';

class MainPage extends StatelessWidget {
  final MainPageController controller = Get.put(MainPageController());

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex,
          children: const [
            HomePage(),
            MyCardPage(),
            MyCardPage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'My Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.selectedIndex,
          selectedItemColor: AppColor.mainColor,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
