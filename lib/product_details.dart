import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String Title;
  final String _image;
  final int _price;
  final String _Desc;

  ProductDetails(this._image, this._price, this._Desc,this.Title);



  @override
  Widget build(BuildContext context) {
    return Container(

child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,

children: [

  Container(
      alignment: AlignmentDirectional.topCenter,
      width:500,
      height:600,
      margin: const  EdgeInsets.fromLTRB(15,20,15,15),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
    children: [

      Image.asset(_image),
      const SizedBox(
        height: 20,

      ),
      Text(_Desc,textScaleFactor:1, textAlign:TextAlign.center,),
      const SizedBox(
        height: 60,

      ),
      Text(_price.toString()+"TND",textScaleFactor: 2.5,),
      const SizedBox(
        height:45,

      ),
      ElevatedButton.icon(onPressed: () {
        print("pressed");

      }, icon: Icon(
        Icons.account_balance_wallet_sharp,
        color: Colors.white,
        size: 24.0,
      ),label: Text('Acheter'), style: ElevatedButton.styleFrom(

          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold)),)
    ],
  )
     ),





],



),

    );
  }
}
