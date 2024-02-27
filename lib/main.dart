import 'package:ecart/views/registration/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        // GetPage(name: '/signUp', page: () => const SignUpPage()),
        // GetPage(name: '/landing', page: () => const LandingPage()),
      ],
      // home: LoginPage(),
      initialRoute: '/login',
    );
  }
}
