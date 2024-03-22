import 'package:ecart/constants/firebase_constant.dart';
import 'package:ecart/widgets/custom_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var passwordVisibility = true.obs;
  var showIconButton = false.obs;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  void toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void updateIconButtonVisibility(bool hasContent) {
    showIconButton.value = hasContent;
  }

  Future signIn(String email, String password) async {
    try {
      // ignore: unused_local_variable
      final credential = await auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      // to add some control to the login
      Get.offAllNamed('/main');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        customSnackBar(
          'invalid email or password.',
          Icons.person,
        );
      } else {
        customSnackBar(
          'An error occurred during sign-in.',
          Icons.error,
        );
      }
      print("-----------------------------");
      print(e.code);
      print("-----------------------------");
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        Get.offAllNamed('/home');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
