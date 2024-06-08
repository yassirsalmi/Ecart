import 'package:ecart/constants/constant_widget.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 3 component in a row
            Column(
              children: [
                SizedBox(
                  height: 42,
                  child: Image.asset('assets/icons/profile_icons/payment.png'),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Payment',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 42,
                  child: Image.asset('assets/icons/profile_icons/delivery.png'),
                ),
                const SizedBox(width: 4),
                const Text(
                  'delivery',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        meduimSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 42,
                  child:
                      Image.asset('assets/icons/profile_icons/processus.png'),
                ),
                const SizedBox(width: 4),
                const Text(
                  'processing',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 42,
                  child: Image.asset('assets/icons/profile_icons/canceled.png'),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Canceled',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        meduimSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 3 component in a row

            Column(
              children: [
                SizedBox(
                  height: 42,
                  child: Image.asset('assets/icons/profile_icons/wishlist.png'),
                ),
                const SizedBox(width: 4),
                const Text(
                  'WishList',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 42,
                  child: Image.asset('assets/icons/profile_icons/costumer.png'),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Get Help',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
