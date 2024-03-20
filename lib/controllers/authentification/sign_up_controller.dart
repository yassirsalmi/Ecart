import 'package:ecart/constants/firebase_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var passwordVisibility = true.obs;
  var showIconButton = false.obs;

  void toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void updateIconButtonVisibility(bool hasContent) {
    showIconButton.value = hasContent;
  }

  Future signUp(String email, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      Get.offAllNamed('/login');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.showSnackbar(
          const GetSnackBar(
            message: 'The password provided is too weak.',
            icon: Icon(Icons.refresh),
            duration: Duration(seconds: 3),
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        Get.showSnackbar(
          const GetSnackBar(
            message: 'The account already exists for that email.',
            icon: Icon(Icons.refresh),
            duration: Duration(seconds: 3),
          ),
        );
      }
    } catch (e) {
      Get.showSnackbar(
        const GetSnackBar(
          message: 'Network Error.',
          icon: Icon(Icons.error),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
