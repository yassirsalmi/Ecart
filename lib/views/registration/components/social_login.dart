import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:flutter/material.dart';

Widget socialLogin(SignUpController signUpController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: () {
          // signUpController.signInWithGoogle();
        },
        child: const Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/google_logo.png'),
            ),
            Text('Google'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: const Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/facebook_logo.png'),
            ),
            Text('Facebook'),
          ],
        ),
      ),
    ],
  );
}
