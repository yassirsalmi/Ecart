import 'package:ecart/constants/colors.dart';
import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:ecart/views/registration/components/signup_form.dart';
import 'package:ecart/views/registration/components/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/texts.dart' as txt;

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final SignUpController _signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            txt.signUpText,
            style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bigSpace(),
          const CircleAvatar(
            backgroundImage: AssetImage(txt.defaultprofilePicture),
            radius: 56,
          ),
          meduimSpace(),
          SignUpForm(_signUpController),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(txt.haveAnAccount),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/login');
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.blue[300],
                  ),
                ),
              ),
            ],
          ),
          bigSpace(),
          socialLogin(_signUpController),
        ],
      ),
    );
  }
}
