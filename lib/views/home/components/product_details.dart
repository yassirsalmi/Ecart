import 'package:ecart/constants/constant_widget.dart';
import 'package:flutter/material.dart';

Widget productDetail() {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      border: Border.all(
        color: const Color(0xFF95CD2C),
      ),
    ),
    child: Column(
      children: [
        const Positioned(top: 0, child: Text('Modern Men S Watch')),
        smallSpace(),
        const Row(
          children: [
            // Image(image: AssetImage('assets/watch_1_men.webp')),
            Text('des'),
          ],
        ),
      ],
    ),
  );
}
