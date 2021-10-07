import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {

  final String _image;
  final String _title;
 final int _price;
  ProductInfo(this._image,this._price,this._title);




  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children:  [
         Container(

          margin: const  EdgeInsets.fromLTRB(10, 10, 20, 10),
           child: Image.asset(_image, width:200 ,height:94 ,),


         ),

         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(_title),
         const SizedBox(
           height: 10,

         ),
         Text(_price.toString()+"TND",textScaleFactor: 2,)
            ],


)

        ],
      ),

    ) ;
  }
}

class ProductD{
  final String image;
  final String title;
  final int price;


  ProductD(this.image, this.title, this.price);

  @override
  String toString() {
    return 'product{_image: $image, _title: $title, _price: $price}';
  }
}


