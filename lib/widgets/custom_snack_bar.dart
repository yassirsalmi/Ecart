import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customSnackBar(String message, IconData icon) {
  Get.showSnackbar(
    GetSnackBar(
      message: message,
      icon: Icon(icon),
      duration: const Duration(seconds: 3),
    ),
  );
}
