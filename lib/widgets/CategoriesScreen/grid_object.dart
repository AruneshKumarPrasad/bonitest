import 'package:flutter/material.dart';

import '../../models/category_object.dart';

class GridObject extends StatelessWidget {
  const GridObject({
    Key? key,
    required this.category,
    this.btnPressed,
  }) : super(key: key);
  final CategoryObjModel category;
  final dynamic btnPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btnPressed,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  fit: BoxFit.cover,
                  category.imageAssetSrc,
                ),
              ),
            ),
            SizedBox(
              height: 18,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  category.categoryLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
