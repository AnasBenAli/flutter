import 'package:flutter/material.dart';
import 'inscription_form.dart';
class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),

      ),

      body: Column(

children: [


  InscriptionForm("assets/images/minecraft.jpg")
],

      ),
    );
  }
}
