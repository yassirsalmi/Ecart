import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/views/home/components/discount.dart';
import 'package:ecart/views/home/components/product_details.dart';
import 'package:flutter/material.dart';
import '../../constants/texts.dart' as txt;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //the top part of the screen goes here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Color(0xFF95CD2C),
                          size: 36,
                        )),
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
                // the discount component the t will be modified or hiden
                discountComponent(),
                smallSpace(),
                // scrollable row to filter products
                Row(
                  children: [
                    GestureDetector(
                      child: const Row(
                          children: [Icon(Icons.watch), Text('Accessories')]),
                    ),
                  ],
                ),
                smallSpace(),
                // this is the component to display product at the home page
                smallSpace(),
                productDetail(),
                // this is the component to display product at the home page
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
