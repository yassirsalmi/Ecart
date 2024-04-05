import 'package:ecart/constants/colors.dart';
import 'package:ecart/controllers/authentification/login_controller.dart';
import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:flutter/material.dart';

Widget authButton(
  String button,
  LoginController loginController,
  TextEditingController email,
  TextEditingController password,
) {
  return GestureDetector(
    onTap: () {
      loginController.signIn(email.text, password.text);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        height: 50,
        width: 260,
        decoration: const BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Center(
          child: Text(
            button,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget signUpButton(
  String button,
  SignUpController signUpController,
  TextEditingController name,
  TextEditingController email,
  TextEditingController password,
) {
  return GestureDetector(
    onTap: () {
      signUpController.signUp(name.text, email.text, password.text);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        height: 50,
        width: 260,
        decoration: const BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Center(
          child: Text(
            button,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ),
  );
}
