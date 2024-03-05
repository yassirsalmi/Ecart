import 'package:ecart/constants/colors.dart';
import 'package:ecart/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/registration/login_page.dart';
import 'views/registration/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.mainColor),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/signUp', page: () => SignUpPage()),
        // GetPage(name: '/landing', page: () => const LandingPage()),
      ],
      // to use getx for navigation we change home to initialRoute
      initialRoute: '/login',
    );
  }
}
