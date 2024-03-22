import 'package:ecart/constants/colors.dart';
import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:ecart/views/registration/components/signup_form.dart';
import 'package:ecart/views/registration/components/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/texts.dart' as txt;

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final SignUpController _signUpController = Get.put(SignUpController());

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
                      color: AppColor.mainColor,
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
              color: AppColor.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(txt.defaultprofilePicture),
            radius: 56,
          ),
          meduimSpace(),
          SignUpForm(),
          bigSpace(),
          socialLogin(_signUpController),
        ],
      ),
    );
  }
}
