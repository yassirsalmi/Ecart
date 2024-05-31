import 'package:ecart/constants/colors.dart';
import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:ecart/views/registration/components/signup_form.dart';
import 'package:ecart/views/registration/components/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/texts.dart' as txt;

// The SignUpPage class represents the sign-up screen of the application.
// It includes the application logo, title, a sign-up form, a profile picture,
// and options for social login and account switching.
class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // Initialize the SignUpController using GetX dependency injection.
  final SignUpController _signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // sign up header text
          const Text(
            txt.signUpText,
            style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bigSpace(),
          // profile picture avatar
          Stack(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage(txt.defaultprofilePicture),
                radius: 72,
              ),
              Positioned(
                bottom: -6,
                left: 95,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_a_photo,
                    color: AppColor.mainColor,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
          bigSpace(),
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
          // Social login options
          socialLogin(_signUpController),
        ],
      ),
    );
  }
}
