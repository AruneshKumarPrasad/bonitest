import 'package:flutter/material.dart';

import '../widgets/CartScreen/bottom_bar_cart.dart';
import '../widgets/CartScreen/cart_body.dart';
import '../widgets/CartScreen/mid_banner_cart.dart';
import '../widgets/VendorScreen/item_amount.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String routeName = 'cart';
  @override
  Widget build(BuildContext context) {
    List<String> args =
        ModalRoute.of(context)?.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            // Code For Back Button
            // ....
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: const BottomBarCart(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              args[0],
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                'Cart Items',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Medicine',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    children: [
                      const ItemAmount(),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Rs 120',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 30,
              color: Colors.grey.shade400,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.indigo.shade50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Choose Delivery mode',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MidBannerCart()
                ],
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey.shade400,
            ),
            const CartBody()
          ],
        ),
      ),
    );
  }
}
