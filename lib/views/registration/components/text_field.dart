import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/authentification/login_controller.dart';

Widget textField(
  String? label,
  TextEditingController controller,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 26),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Color(0xFF95CD2C),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Color(0xFF95CD2C),
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        labelText: label,
      ),
    ),
  );
}

Widget passwordField(
  String? label,
  TextEditingController controller,
  PasswordController passwordController,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 26),
    child: Obx(
      () => TextFormField(
        controller: controller,
        obscureText: passwordController.passwordVisibility.value,
        onChanged: (text) {
          passwordController.updateIconButtonVisibility(text.isNotEmpty);
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Color(0xFF95CD2C),
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Color(0xFF95CD2C),
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            labelText: label,
            suffixIcon: Obx(
              () => Visibility(
                visible: passwordController.showIconButton.value,
                child: IconButton(
                  onPressed: passwordController.toggleVisibility,
                  icon: Icon(passwordController.passwordVisibility.value
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
            )),
      ),
    ),
  );
}
