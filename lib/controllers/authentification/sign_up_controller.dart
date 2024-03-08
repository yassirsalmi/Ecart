import 'package:ecart/constants/firebase_constant.dart';
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
    await auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }
}
