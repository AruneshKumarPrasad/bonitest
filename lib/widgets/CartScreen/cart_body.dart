import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: const FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Detailed Bill',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Sub Total',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Rs 120',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'GST',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Rs 22',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Delivery Charges',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Rs 0',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Grand Total',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Rs 142',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
