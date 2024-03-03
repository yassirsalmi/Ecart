import 'package:ecart/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget authButton(
  String button,
) {
  return GestureDetector(
    // login, sign up bottun
    onTap: () {
      Get.to(() => const HomePage());
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        height: 50,
        width: 260,
        decoration: const BoxDecoration(
          color: Color(0xFF95CD2C),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Center(
          child: Text(
            button,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
