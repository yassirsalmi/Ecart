import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<User?> currentUser = FirebaseAuth.instance.currentUser.obs;

  // Method to handle logout
  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed('/');
    } catch (e) {
      print("Error signing out: $e");
    }
  }
}
