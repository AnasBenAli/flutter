import 'package:flutter/material.dart';

class biblio_info extends StatelessWidget {
  final String _image;
  final String _title;


  const biblio_info(this._image, this._title);

  @override
  Widget build(BuildContext context) {
    return Card(
margin:const EdgeInsets.fromLTRB(5,10,10 ,5 ) ,

  child: SizedBox(
    width: 180,
    height:100 ,
    child: Column(

      children: [

        Container(

          child: Image.asset(this._image,width: 150,height: 64,),


        ),

        SizedBox(
          height: 10,
        ),

        Text(this._title),

      ],

    ),
  ),
  


    );
  }
}
