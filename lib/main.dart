import 'package:flutter/material.dart';

import 'signup.dart';
import 'product_details.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'G-Store ESPRIT',
      // home: Signup(),
      home: Home(),

    );
  }
}