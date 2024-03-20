import 'package:ecart/controllers/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: GetX<ProfileController>(
          init: ProfileController(),
          builder: (controller) {
            if (controller.currentUser.value != null) {
              // User is logged in, display user information
              User? user = controller.currentUser.value;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Display Name: ${user!.displayName ?? "N/A"}'),
                  Text('Email: ${user.email ?? "N/A"}'),
                  // Add more user details as needed
                  ElevatedButton(
                    onPressed: () =>
                        controller.signOut(), // Call signOut method
                    child: Text('Log Out'),
                  ),
                ],
              );
            } else {
              // User is not logged in
              return Text('User not logged in');
            }
          },
        ),
      ),
    );
  }
}
