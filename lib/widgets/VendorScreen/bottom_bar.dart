import 'package:flutter/material.dart';

import '../../screens/cart_screen.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.nameOfCategory,
  }) : super(key: key);

  final String nameOfCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.indigo.shade500,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "Rs 141 | 1 items",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              CartScreen.routeName,
              arguments: <String>[nameOfCategory],
            ),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                children: const [
                  Text(
                    "View cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
