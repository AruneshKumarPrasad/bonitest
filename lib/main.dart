import 'package:bonitest/screens/cart_screen.dart';
import 'package:bonitest/screens/categories_screen.dart';
import 'package:bonitest/screens/vendor_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Global.bgColor,
        textTheme: GoogleFonts.montserratTextTheme(),
        // const TextTheme(
        //   bodyText1: TextStyle(fontSize: 18.0),
        //   bodyText2: TextStyle(fontSize: 24.0),
        // ),
      ),
      routes: {
        Categories.routeName: (context) => const Categories(),
        Vendor.routeName: (context) => const Vendor(),
        CartScreen.routeName: (context) => const CartScreen(),
      },
    );
  }
}
