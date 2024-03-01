import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/views/registration/components/social_login.dart';
import 'package:ecart/views/registration/components/text_field.dart';
import 'package:flutter/material.dart';

import 'components/auth_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    width: 120,
                    height: 180,
                    child: const Image(
                      image: AssetImage('assets/ecart_logo.png'),
                    ),
                  ),
                ),
                const Positioned(
                  left: 80,
                  top: 120,
                  child: Text(
                    'Ecart',
                    style: TextStyle(
                      color: Color(0xFF95CD2C),
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Text(
            'Sign Up To Continue',
            style: TextStyle(
              color: Color(0xFF95CD2C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile_defaut.png'),
            radius: 56,
          ),
          meduimSpace(),
          textField('Enter Your Name', _nameController),
          spaceBetweenFields(),
          textField('Enter Your Email', _emailController),
          spaceBetweenFields(),
          textField('Enter Your Password', _passwordController),
          bigSpace(),
          authButton('Sign Up'),
          bigSpace(),
          socialLogin(),
        ],
      ),
    );
  }
}
