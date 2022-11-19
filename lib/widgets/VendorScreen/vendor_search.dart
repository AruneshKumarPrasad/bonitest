import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorSearch extends StatelessWidget {
  const VendorSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          label: const Text('Search for Products or Services'),
          suffixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              strokeAlign: StrokeAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
