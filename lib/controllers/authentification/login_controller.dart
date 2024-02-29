import 'package:get/get.dart';

class PasswordController extends GetxController {
  var passwordVisibility = true.obs;
  var showIconButton = false.obs;

  void toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void updateIconButtonVisibility(bool hasContent) {
    showIconButton.value = hasContent;
  }
}
