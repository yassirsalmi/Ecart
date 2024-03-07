import 'package:ecart/views/registration/components/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/constant_widget.dart';
import '../../../constants/texts.dart' as txt;
import '../../../controllers/authentification/login_controller.dart';
import 'text_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final _formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          textField(
            txt.emailText,
            _emailTextController,
          ),
          spaceBetweenFields(),
          passwordField(
            txt.passwordText,
            _passwordTextController,
            _loginController,
          ),
          spaceBetweenFields(),
          authButton(
            'Login',
            _loginController,
            _emailTextController,
            _passwordTextController,
          ),
        ],
      ),
    );
  }
}
