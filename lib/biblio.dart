import 'package:flutter/material.dart';
import 'biblio_info.dart';
class biblio extends StatelessWidget {
  const biblio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Ma bibliothèque"),

      ),
      body: ListView(
children: [

  Row(

      children: [


        biblio_info('assets/images/dmc5.jpg',"Devil may cry 5"),
        biblio_info('assets/images/re8.jpg',"Resident evil 8 "),
      ],


  ),

  Row(

    children: [

      biblio_info('assets/images/nfs.jpg',"Need For speed"),



    ],


  ),



],

      ),


    );
  }
}
