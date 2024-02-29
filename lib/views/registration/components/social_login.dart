import 'package:flutter/material.dart';

Widget socialLogin() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        child: const Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/facebook_logo.png'),
              // radius: 80,
            ),
            Text('Facebook'),
          ],
        ),
      ),
      GestureDetector(
        child: const Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/google_logo.png'),
              // radius: 80,
            ),
            Text('Google'),
          ],
        ),
      ),
    ],
  );
}
