import 'package:ecart/models/Item_type.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final ItemType item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            SizedBox(
              height: 28,
              child: Image.asset(item.imagePath),
            ),
            const SizedBox(width: 4),
            Text(item.label),
          ],
        ),
      ),
    );
  }
}
