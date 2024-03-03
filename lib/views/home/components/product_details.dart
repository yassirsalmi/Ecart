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
        const Text('Modern Men S Watch'),
        smallSpace(),
        const Row(
          children: [
            SizedBox(
              width: 180,
              height: 100,
              child: Image(image: AssetImage('assets/watch_1_men-1.png')),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'A gentleman’s choice of timepiece says as much...',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
