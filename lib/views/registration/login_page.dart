import 'package:ecart/views/registration/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';

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
                )
              ],
            ),
          ),
          const Text(
            'Sign In To Continue',
            style: TextStyle(
                color: Color(0xFF95CD2C),
                fontSize: 20,
                fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 12,
                ),
                passwordField(
                  'Enter your password',
                  _passwordTextController,
                  _passwordController,
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  // login bottun
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Container(
                      height: 50,
                      width: 260,
                      decoration: const BoxDecoration(
                        color: Color(0xFF95CD2C),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
