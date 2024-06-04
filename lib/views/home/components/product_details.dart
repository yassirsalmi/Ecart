import 'package:ecart/constants/colors.dart';
import 'package:ecart/constants/constant_widget.dart';
import 'package:flutter/material.dart';

Widget productDetail({
  required String title,
  required String imageUrl,
  required String description,
  required VoidCallback onAddFavorite,
  required VoidCallback onSeeDetails,
}) {
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
        Text(title),
        meduimSpace(),
        Row(
          children: [
            SizedBox(
              width: 180,
              height: 80,
              child: Image(image: AssetImage(imageUrl)),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtonTheme(
              minWidth: 200.0,
              child: ElevatedButton(
                onPressed: onAddFavorite,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.mainColorLight,
                ),
                child: const Text('Add Favorite'),
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              child: ElevatedButton(
                onPressed: onSeeDetails,
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
