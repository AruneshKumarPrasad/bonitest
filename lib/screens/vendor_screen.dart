import 'package:bonitest/models/category_object.dart';
import 'package:flutter/material.dart';

import '../widgets/VendorScreen/bottom_bar.dart';
import '../widgets/VendorScreen/header_vendor.dart';
import '../widgets/VendorScreen/mid_banner_vendor.dart';
import '../widgets/VendorScreen/vendor_body.dart';
import '../widgets/VendorScreen/vendor_search.dart';

class Vendor extends StatelessWidget {
  const Vendor({Key? key}) : super(key: key);
  static const String routeName = 'vendor';

  @override
  Widget build(BuildContext context) {
    List<CategoryObjModel> args =
        ModalRoute.of(context)?.settings.arguments as List<CategoryObjModel>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade50,
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
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.contain,
                    child: Text('4.5'),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              padding: const EdgeInsets.all(8),
              child: const FittedBox(
                fit: BoxFit.cover,
                child: Icon(Icons.share),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        nameOfCategory: args[0].categoryLabel,
      ),
      body: Column(
        children: [
          Container(
            height: 125,
            width: double.infinity,
            color: Colors.indigo.shade50,
            child: HeaderVendor(args: args),
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.indigo.shade50,
            child: const MidBannerVendor(),
          ),
          Column(
            children: [
              Container(
                height: 35,
                width: 160,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'MENU',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(9),
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'ABOUT',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const VendorSearch(),
              const VendorBody(),
            ],
          ),
        ],
      ),
    );
  }
}
