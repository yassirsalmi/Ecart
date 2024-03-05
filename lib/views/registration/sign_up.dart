import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/views/registration/components/social_login.dart';
import 'package:ecart/views/registration/components/text_field.dart';
import 'package:flutter/material.dart';
import '../../constants/texts.dart' as txt;

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
            txt.signUpText,
            style: TextStyle(
              color: Color(0xFF95CD2C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(txt.defaultprofilePicture),
            radius: 56,
          ),
          meduimSpace(),
          textField(
            txt.nameText,
            _nameController,
          ),
          spaceBetweenFields(),
          textField(
            txt.emailText,
            _emailController,
          ),
          spaceBetweenFields(),
          textField(
            txt.passwordText,
            _passwordController,
          ),
          bigSpace(),
          authButton('Sign Up'),
          bigSpace(),
          socialLogin(),
        ],
      ),
    );
  }
}
