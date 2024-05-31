import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/controllers/authentification/login_controller.dart';
import 'package:ecart/views/registration/components/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/social_login.dart';
import '../../constants/texts.dart' as txt;

// The LoginPage class represents the login screen of the application.
// It includes the application logo, title, a login form, and options for
// social login and account creation.
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Initialize the LoginController using GetX dependency injection.
  final LoginController _signInController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            // the Stack is used to put the application logo and title
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Image(
                      image: AssetImage(txt.logoPath),
                    ),
                  ),
                ),
                Positioned(
                  right: 80,
                  top: 230,
                  child: Text(
                    txt.appName,
                    style: TextStyle(
                      color: Color(0xFF95CD2C),
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Sign-in text header.
          const Text(
            txt.signInText,
            style: TextStyle(
              color: Color(0xFF95CD2C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bigSpace(),
          // Login form
          LoginForm(),
          meduimSpace(),
          // Row for account creation link.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(txt.createAccountText),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/signUp');
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.blue[300],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          // Social login options.
          socialLogin(_signInController),
        ],
      ),
    );
  }
}
