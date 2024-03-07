import 'package:ecart/controllers/landing/lading_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/firebase_constant.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) => StreamBuilder<User?>(
        stream: auth.authStateChanges(),
        builder: (context, snapshot) {
          return GetBuilder<LandingController>(
            init: LandingController(),
            builder: (controller) {
              if (snapshot.hasData) {
                controller.redirectToMainPage();
                return const SizedBox();
              } else {
                controller.redirectToLoginPage();
                return const SizedBox();
              }
            },
          );
        },
      );
}
