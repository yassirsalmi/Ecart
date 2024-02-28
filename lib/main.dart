import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/registration/login_page.dart';
import 'views/registration/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF95CD2C)),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/signUp', page: () => const SignUpPage()),
        // GetPage(name: '/landing', page: () => const LandingPage()),
      ],
      // to use getx for navigation we change home to initialRoute
      // home: LoginPage(),
      initialRoute: '/login',
    );
  }
}
