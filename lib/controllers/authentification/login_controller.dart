import 'package:ecart/constants/firebase_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var passwordVisibility = true.obs;
  var showIconButton = false.obs;

  void toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void updateIconButtonVisibility(bool hasContent) {
    showIconButton.value = hasContent;
  }

  Future signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      // to add some control to the login
      Get.offAllNamed('/main');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        Get.showSnackbar(
          const GetSnackBar(
            message: 'invalid email.',
            icon: Icon(Icons.person),
            duration: Duration(seconds: 3),
          ),
        );
      } else if (e.code == 'invalid-credential') {
        Get.showSnackbar(
          const GetSnackBar(
            message: 'No User Found.',
            icon: Icon(Icons.person),
            duration: Duration(seconds: 3),
          ),
        );
      } else if (e.code.toString() == 'wrong-password') {
        Get.showSnackbar(
          const GetSnackBar(
            message: 'Wrong password provided for that user.',
            icon: Icon(Icons.password_rounded),
            duration: Duration(seconds: 3),
          ),
        );
      } else {
        Get.showSnackbar(
          const GetSnackBar(
            message: 'An error occurred during sign-in.',
            icon: Icon(Icons.error),
            duration: Duration(seconds: 3),
          ),
        );
      }
      print("-----------------------------");
      print(e.code);
      print("-----------------------------");
    }
  }
}
