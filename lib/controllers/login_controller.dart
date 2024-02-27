import 'package:get/get.dart';

class PasswordController extends GetxController {
  var passwordVisibility = true.obs;

  void toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }
}
