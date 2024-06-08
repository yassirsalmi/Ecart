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
                  height: 28,
                  child: Image.asset('assets/icons/profile_icons/payment.png'),
                ),
                const SizedBox(width: 4),
                const Text('Payment'),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 28,
                  child: Image.asset('assets/icons/profile_icons/delivery.png'),
                ),
                const SizedBox(width: 4),
                const Text('delivery'),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 28,
                  child:
                      Image.asset('assets/icons/profile_icons/processus.png'),
                ),
                const SizedBox(width: 4),
                const Text('processing'),
              ],
            ),
          ],
        ),
        bigSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 3 component in a row
            Column(
              children: [
                SizedBox(
                  height: 28,
                  child: Image.asset('assets/icons/profile_icons/canceled.png'),
                ),
                const SizedBox(width: 4),
                const Text('Canceled'),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 28,
                  child: Image.asset('assets/icons/profile_icons/wishlist.png'),
                ),
                const SizedBox(width: 4),
                const Text('WishList'),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 28,
                  child: Image.asset('assets/icons/profile_icons/costumer.png'),
                ),
                const SizedBox(width: 4),
                const Text('Costumer Care'),
              ],
            ),
          ],
        )
      ],
    );
  }
}
