import 'package:flutter/material.dart';

Widget discountComponent() {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      border: Border.all(
        color: const Color(0xFF95CD2C),
      ),
    ),
    child: const Stack(
      children: [
        ListTile(
          title: Text(
            'Summer Offers',
            style: TextStyle(
              color: Color(0xFF95CD2C),
              fontSize: 32,
            ),
          ),
          subtitle: Text(
            'Discount Up To 40 %',
            style: TextStyle(
              color: Color(0xFF95CD2C),
              fontSize: 24,
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 14,
          child: Image(
            image: AssetImage('assets/logos/summer_logo.png'),
          ),
        ),
      ],
    ),
  );
}
