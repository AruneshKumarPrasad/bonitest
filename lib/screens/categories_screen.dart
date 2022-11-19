import 'package:bonitest/models/category_object.dart';
import 'package:bonitest/screens/vendor_screen.dart';
import 'package:flutter/material.dart';

import '../global/global.dart';
import '../repository/category_object_list.dart';
import '../widgets/CategoriesScreen/grid_object.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
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
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerLeft,
            child: const Text(
              "All Categories",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Global.bgColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ]),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
                labelText: "Search for Products, Businesses, etc.,",
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                crossAxisCount: 3,
                physics: const BouncingScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  ...Repo.categoryObjects
                      .map(
                        (obj) => GridObject(
                          category: obj,
                          btnPressed: () => Navigator.pushNamed(
                            context,
                            Vendor.routeName,
                            arguments: <CategoryObjModel>[obj],
                          ),
                        ),
                      )
                      .toList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
