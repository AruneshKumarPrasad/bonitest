import 'package:flutter/material.dart';

class MidBannerVendor extends StatelessWidget {
  const MidBannerVendor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 80,
          height: 25,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.orange.shade800,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  offset: const Offset(0, 2),
                ),
              ]),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  "Follow",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
          child: Text(
            "0 followers",
            style: TextStyle(
              color: Colors.orange.shade800,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
