import 'package:ecart/controllers/authentification/login_controller.dart';
import 'package:ecart/controllers/authentification/sign_up_controller.dart';
import 'package:flutter/material.dart';

// Widget socialLogin(LoginController signInController) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       GestureDetector(
//         onTap: () {
//           signInController.signInWithGoogle();
//         },
//         child: const Column(
//           children: [
//             CircleAvatar(
//               backgroundColor: Colors.white,
//               backgroundImage: AssetImage('assets/google_logo.png'),
//             ),
//             Text('Google'),
//           ],
//         ),
//       ),
//       GestureDetector(
//         onTap: () {},
//         child: const Column(
//           children: [
//             CircleAvatar(
//               backgroundColor: Colors.white,
//               backgroundImage: AssetImage('assets/facebook_logo.png'),
//             ),
//             Text('Facebook'),
//           ],
//         ),
//       ),
//     ],
//   );
// }

// using a type od dynamic to accept login & sign up controller
Widget socialLogin(dynamic controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: () {
          if (controller is LoginController) {
            controller.signInWithGoogle();
          } else if (controller is SignUpController) {
            controller.signUpWithGoogle();
          }
        },
        child: const Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/google_logo.png'),
            ),
            Text('Google'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: const Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/facebook_logo.png'),
            ),
            Text('Facebook'),
          ],
        ),
      ),
    ],
  );
}
