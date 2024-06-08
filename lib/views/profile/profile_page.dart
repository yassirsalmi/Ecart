import 'package:ecart/constants/constant_widget.dart';
import 'package:ecart/controllers/profile/profile_controller.dart';
import 'package:ecart/views/profile/components/orders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../constants/texts.dart' as txt;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(txt.defaultprofilePicture),
              radius: 72,
            ),
            meduimSpace(),
            GetX<ProfileController>(
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
                      bigSpace(),
                      // My orders and favorite items ... component must be aded here
                      const Orders(),
                      bigSpace(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Edit Profile'),
                          ),
                          ElevatedButton(
                            onPressed: () => controller.signOut(),
                            child: const Text('Log Out'),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return const Text('User not logged in');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
