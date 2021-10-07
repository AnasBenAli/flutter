import 'package:flutter/material.dart';
import 'product_details.dart';
class Product extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Devil May Cry 5"),
    ),
body: Column(

children: [

  ProductDetails("assets/images/dmc5.jpg",200,"DMc5 is a beat them all game zjzjgzigjzgjzog  jfjjejfjejfjfjfjee"
     + " aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
         + "ikkaojfjgpjzepgpzgzkg^kzkgz^kg^kzgkzgkzkg^zg^zekg^z^gpzkgzkgkozgkzg","Devil may cry 5")

],

    ),

    );
  }
}
