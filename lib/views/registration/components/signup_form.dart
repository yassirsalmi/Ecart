import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:ecart/views/registration/components/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/constant_widget.dart';
import '../../../constants/texts.dart' as txt;
import 'text_field.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final SignUpController _signupController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          textField(
            txt.nameText,
            _nameTextController,
          ),
          spaceBetweenFields(),
          textField(
            txt.emailText,
            _emailTextController,
          ),
          spaceBetweenFields(),
          textField(
            txt.passwordText,
            _passwordTextController,
          ),
          bigSpace(),
          signUpButton(
            'Sign Up',
            _signupController,
            _emailTextController,
            _passwordTextController,
          ),
          spaceBetweenFields(),
        ],
      ),
    );
  }
}
