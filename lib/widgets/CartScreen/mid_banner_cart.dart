import 'package:flutter/material.dart';

class MidBannerCart extends StatelessWidget {
  const MidBannerCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 30,
          width: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.indigo.shade500),
          ),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Go to Shop',
              style: TextStyle(
                color: Colors.indigo.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: Colors.indigo.shade500,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Delivery',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
