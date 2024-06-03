import 'package:ecart/constants/colors.dart';
import 'package:ecart/constants/constant_widget.dart';
import 'package:flutter/material.dart';

Widget productDetail() {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      border: Border.all(
        color: AppColor.mainColor,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Modern Men S Watch'),
        meduimSpace(),
        const Row(
          children: [
            SizedBox(
              width: 180,
              height: 80,
              child: Image(image: AssetImage('assets/watch_1_men-1.png')),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'A gentleman`s choice of timepiece says as much...',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        // this Row is used to create to buttons add to favorite and see details
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtonTheme(
              minWidth: 200.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.mainColorLight,
                ),
                child: const Text('Add Favorite'),
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.mainColorLight,
                ),
                child: const Text('See Details'),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
