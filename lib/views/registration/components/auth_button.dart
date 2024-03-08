import 'package:ecart/constants/colors.dart';
import 'package:ecart/controllers/authentification/login_controller.dart';
import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:ecart/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget authButton(
  String button,
  LoginController loginController,
  TextEditingController email,
  TextEditingController password,
) {
  return GestureDetector(
    // login, sign up bottun
    onTap: () {
      loginController.signIn(email.text, password.text);
      Get.to(() => MainPage());
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
  TextEditingController email,
  TextEditingController password,
) {
  return GestureDetector(
    // login, sign up bottun
    onTap: () {
      signUpController.signUp(email.text, password.text);
      Get.to(() => MainPage());
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
