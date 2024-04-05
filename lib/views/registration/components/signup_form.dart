import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:ecart/views/registration/components/auth_button.dart';
import 'package:flutter/material.dart';
import '../../../constants/constant_widget.dart';
import '../../../constants/texts.dart' as txt;
import 'text_field.dart';

class SignUpForm extends StatelessWidget {
  final SignUpController signUpController;
  SignUpForm(this.signUpController, {Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          textField(
            txt.nameText,
            signUpController.fullNameController,
          ),
          spaceBetweenFields(),
          textField(
            txt.emailText,
            signUpController.emailController,
          ),
          spaceBetweenFields(),
          passwordField(
            txt.passwordText,
            signUpController.passwordController,
            signUpController,
          ),
          bigSpace(),
          signUpButton(
            'Sign Up',
            signUpController,
            signUpController.fullNameController,
            signUpController.emailController,
            signUpController.passwordController,
          ),
          spaceBetweenFields(),
        ],
      ),
    );
  }
}
