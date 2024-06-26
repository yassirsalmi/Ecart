import 'package:ecart/constants/colors.dart';
import 'package:ecart/firebase_options.dart';
import 'package:ecart/views/main_page.dart';
import 'package:ecart/views/profile/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home/home_page.dart';
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
        GetPage(
          name: '/',
          page: () {
            return FirebaseAuth.instance.currentUser != null
                ? MainPage()
                : LoginPage();
          },
        ),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/signUp', page: () => SignUpPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/profile', page: () => const ProfilePage()),
        GetPage(name: '/main', page: () => MainPage()),
      ],
      initialRoute: '/',
    );
  }
}
