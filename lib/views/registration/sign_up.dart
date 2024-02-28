import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    width: 300,
                    height: 300,
                    child: const Image(
                      image: AssetImage('assets/ecart_logo.png'),
                    ),
                  ),
                ),
                const Positioned(
                  right: 80,
                  top: 230,
                  child: Text(
                    'Ecart',
                    style: TextStyle(
                      color: Color(0xFF95CD2C),
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
