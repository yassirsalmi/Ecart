import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/views/registration/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/authentification/login_controller.dart';
import 'components/auth_button.dart';
import 'components/social_login.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final PasswordController _passwordController = Get.put(PasswordController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    width: 300,
                    height: 300,
                    child: const Image(
                      image: AssetImage('assets/ecart_logo.png'),
                    ),
                  ),
                ),
                const Positioned(
                  right: 80,
                  top: 230,
                  child: Text(
                    'Ecart',
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
          const Text(
            'Sign In To Continue',
            style: TextStyle(
              color: Color(0xFF95CD2C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                textField(
                  'Enter your email',
                  _emailTextController,
                ),
                spaceBetweenFields(),
                passwordField(
                  'Enter your password',
                  _passwordTextController,
                  _passwordController,
                ),
                spaceBetweenFields(),
                authButton('Login'),
                meduimSpace(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    // sign up Text
                    // gesture detecture
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
                socialLogin(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
