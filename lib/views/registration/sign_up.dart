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
        children: [
          // Padding to create spacing and contain the logo and title
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: SizedBox(
                    width: 120,
                    height: 180,
                    child: Image(
                      image: AssetImage(txt.logoPath),
                    ),
                  ),
                ),
                Positioned(
                  left: 80,
                  top: 120,
                  child: Text(
                    txt.appName,
                    style: TextStyle(
                      color: AppColor.mainColor,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Sign-up text header
          const Text(
            txt.signUpText,
            style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Profile picture placeholder
          const CircleAvatar(
            backgroundImage: AssetImage(txt.defaultprofilePicture),
            radius: 56,
          ),
          meduimSpace(),
          // Sign-up form
          SignUpForm(),
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
