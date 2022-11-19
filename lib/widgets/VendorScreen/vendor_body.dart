import 'package:flutter/material.dart';

import '../../repository/category_object_list.dart';
import 'add_button.dart';
import 'item_amount.dart';

class VendorBody extends StatelessWidget {
  const VendorBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                Repo.medImgSrc,
                fit: BoxFit.cover,
              )),
        ),
        Container(
          height: 70,
          width: 150,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Medicine',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '1 kg',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    '\u{20B9} 120/kg',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    '\u{20B9}  160/kg',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              const ItemAmount(),
              const AddButton()
            ],
          ),
        ),
      ],
    );
  }
}
