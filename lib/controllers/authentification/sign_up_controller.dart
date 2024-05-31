import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecart/constants/firebase_constant.dart';
import 'package:ecart/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpController extends GetxController {
  // controllers
  late TextEditingController fullNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  // handling the state
  var passwordVisibility = true.obs;
  var showIconButton = false.obs;
  // google sign up
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void onInit() {
    super.onInit();
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void updateIconButtonVisibility(bool hasContent) {
    showIconButton.value = hasContent;
  }
// regex for email  format verefication

//   bool isValidEmail(String email) {
//   // Regular expression for basic email format validation
//   final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
//   return emailRegex.hasMatch(email);
// }

// // Example usage:
// String email = 'example@example.com';
// if (isValidEmail(email)) {
//   // Email format is valid, proceed with registration
//   finalCredential = await auth.createUserWithEmailAndPassword(
//     email: email.trim(),
//     password: password.trim(),
//   );
// } else {
//   // Email format is invalid, display an error message to the user
//   print('Invalid email format. Please enter a valid email address.');
// }

  Future signUp(String fullName, String email, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );

      UserModel user = UserModel(
        fullName: fullName,
        email: email,
        password: password,
        role: 'user',
        uuid: credential.user!.uid,
      );
      await saveUser(user);

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
            message: 'An account already exists for that email.',
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

  Future<void> saveUser(UserModel user) async {
    try {
      // Get a reference to the Firestore collection
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      // Convert user object to JSON
      Map<String, dynamic> userData = user.toJson();

      // Add user data to Firestore with a document ID of user's UUID
      await users.doc(user.uuid).set(userData);

      print('User saved to database successfully');
    } catch (e) {
      print('Error saving user to database: $e');
      throw e;
    }
  }

  // this is the part to work on the google sign up
  Future<void> signUpWithGoogle() async {
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
      // ignore: unused_local_variable
      final User? user = userCredential.user;

      if (user != null) {
        Get.offAllNamed('/');
      }

      // Use the user object for further operations or navigate to a new screen.
    } catch (e) {
      print(e.toString());
    }
  }
}
