import 'package:flutter/material.dart';

class ItemAmount extends StatelessWidget {
  const ItemAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.orange.shade800,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Container(
          height: 25,
          width: 35,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.orange.shade800,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
