import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/controllers/home/home_controller.dart';
import 'package:ecart/models/Item_type.dart';
// import 'package:ecart/models/product.dart';
import 'package:ecart/views/home/components/discount.dart';
import 'package:ecart/views/home/components/item_type_widget.dart';
import 'package:ecart/views/home/components/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/texts.dart' as txt;

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Initialize the LoginController using GetX dependency injection.
  // ignore: unused_field
  final HomeController _homeController = Get.put(HomeController());

  final List<ItemType> items = [
    ItemType(imagePath: 'assets/icons/jeans.png', label: 'Jeans'),
    ItemType(imagePath: 'assets/icons/t-shirt.png', label: 'T-shirt'),
    ItemType(imagePath: 'assets/icons/thin.png', label: 'Thin'),
    ItemType(imagePath: 'assets/icons/sneakers.png', label: 'Sneakers'),
    ItemType(imagePath: 'assets/icons/wristwatch.png', label: 'Accessories'),
  ];

  // final ItemType watchType = ItemType(
  //   imagePath: 'assets/icons/wristwatch',
  //   label: 'accessories',
  // );

  // final Product product = Product(
  //   imagePath: 'assets/watch_1_men-1.png',
  //   label: 'Modern Men\'s Watch',
  //   price: 199.99,
  //   description: 'A gentleman\'s choice of timepiece says as much...',
  //   type: watchType,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // The header of the screen the menu, logo and the bag of shopping
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xFF95CD2C),
                        size: 36,
                      ),
                    ),
                    const Text(
                      txt.appName,
                      style: TextStyle(color: Color(0xFF95CD2C), fontSize: 32),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        //the icon need to change
                        Icons.shopping_bag_outlined,
                        color: Color(0xFF95CD2C),
                        size: 36,
                      ),
                    ),
                  ],
                ),
                const Text(
                  txt.landingText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    // color: Color(0xFF95CD2C),
                  ),
                ),
                smallSpace(),
                // the discount component it will be updated based on the season and offers
                discountComponent(),
                meduimSpace(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        items.map((item) => ItemWidget(item: item)).toList(),
                  ),
                ),
                // to display the products list in the home page
                meduimSpace(),
                smallSpace(),
                productDetail(),
                smallSpace(),
                productDetail(),
                smallSpace(),
                productDetail(),
                smallSpace(),
                productDetail(),
                smallSpace(),
                productDetail(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
