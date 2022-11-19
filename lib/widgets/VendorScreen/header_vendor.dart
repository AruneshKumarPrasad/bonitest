import 'package:flutter/material.dart';

import '../../models/category_object.dart';

class HeaderVendor extends StatelessWidget {
  const HeaderVendor({
    Key? key,
    required this.args,
  }) : super(key: key);

  final List<CategoryObjModel> args;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80,
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              args[0].imageAssetSrc,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(right: 5),
            margin: const EdgeInsets.only(bottom: 20, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  args[0].categoryLabel,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Flowers | Bakery | Clothes',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Icon(
                              Icons.radio_button_checked,
                              color: Colors.green,
                              size: 18,
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Open",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.indigo.shade500,
                              size: 18,
                            ),
                          ),
                          const FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "0.66Km",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade500,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Map",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
