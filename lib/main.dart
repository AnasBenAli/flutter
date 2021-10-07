import 'package:flutter/material.dart';
import 'home.dart';
import 'product.dart';
import 'inscription.dart';
import 'home2.dart';
import'biblio.dart';
import'biblio_info.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
   title: "My first Flutter app",

      home: login(),

    );


  }



  
}